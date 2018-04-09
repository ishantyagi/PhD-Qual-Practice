//declare global methods here
var currentIndex = 0;
var lastIndex = 0;
// this will called when document is ready

$(function () {
    //positionFooter();
    initializeIndex();
    if(getPageName().indexOf("questions")> -1){
    $("#students").DataTable();
    }
    if(getPageName()=="new" || getPageName()=="edit"){
        initializeCloudinary();
    }
});


function getPageName () {
     return location.pathname.split('/').slice(-1)[0].toLowerCase();
        }
        
function initializeCloudinary(){
    if($.fn.cloudinary_fileupload !== undefined) {
    $("input.cloudinary-fileupload[type=file]").cloudinary_fileupload();
  }
}
function initializeIndex() {
    currentIndex = $(".questionItem:not(.hide)").index();
    lastIndex = $(".questionItem").length - 1;
    if (currentIndex == lastIndex) {
        //disable next
        $(".next").prop("disabled", true);
    }
    else{
        $(".next").prop("disabled", false); 
    }
    if (currentIndex == 0)
        $(".previous").prop("disabled", true);
        else
     $(".previous").prop("disabled", false);
}

function showAnswer() {
    var elem = $(".questionItem:not(.hide)");
    var correctAnswer = elem.attr("data-answer");
    //highlight right answer
    elem.find(".choices").children().eq(correctAnswer - 1).addClass("correct");
    //alert(correctAnswer);

}

function getNext() {
    //clear correct or wrong classes
    $(".correct").removeClass("correct");
    if (currentIndex < lastIndex) {
        //hide the current element
        $(".questionItem").eq(currentIndex).removeClass("show");
        $(".questionItem").eq(currentIndex).addClass("hide");
        //increament current index
        currentIndex++;
        //show the next element with new current index
        $(".questionItem").eq(currentIndex).addClass("show");
        $(".questionItem").eq(currentIndex).removeClass("hide");
        initializeIndex();
    }
}

function positionFooter() {
    var footerHeight = 0,
        footerTop = 0,
        $footer = $(".footer");
    footerHeight = $footer.height();
    footerTop = ($(window).scrollTop() + $(window).height() - footerHeight) + "px";

    if (($(document.body).height() + footerHeight) < $(window).height()) {
        $footer.css({
            position: "absolute",
            top: footerTop
        });
    } else {
        $footer.css({
            position: "static"
        })
    }
    $footer.removeClass("hide");
    $(window)
        .scroll(this.positionFooter)
        .resize(this.positionFooter)
}

function getPrevious() {
    //clear correct or wrong classes
    $(".correct").removeClass("correct");
    if (currentIndex > 0) {
        //hide the current element
        $(".questionItem").eq(currentIndex).removeClass("show");
        $(".questionItem").eq(currentIndex).addClass("hide");
        //increament current index
        currentIndex--;
        //show the next element with new current index
        $(".questionItem").eq(currentIndex).addClass("show");
        $(".questionItem").eq(currentIndex).removeClass("hide");
        initializeIndex();
    }
}