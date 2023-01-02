<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" type="text/css" href="../resources/css/talks/talksForm.css">
<link rel="stylesheet" type="text/css" href="../resources/css/product/c1.css">

</head>
<body>
<%@ include file="../include/header2.jsp"%>
<div id="wrap">
    <div id="container">
        <div id="contents">    
<div class="xans-element- xans-board xans-board-writepackage-9 xans-board-writepackage xans-board-9 cscenter-wrap "><div class="header">
        <h2>Talks</h2>
    </div>
<form id="boardWriteForm" name="" action="/exec/front/Board/write/9" method="post" target="_self" enctype="multipart/form-data">
<input id="board_no" name="board_no" value="9" type="hidden">
<input id="product_no" name="product_no" value="0" type="hidden">
<input id="move_write_after" name="move_write_after" value="https://matinkim.com/cscenter/index.html" type="hidden">
<input id="cate_no" name="cate_no" value="" type="hidden">
<input id="bUsePassword" name="bUsePassword" value="" type="hidden">
<input id="order_id" name="order_id" value="" type="hidden">
<input id="is_post_checked" name="is_post_checked" value="" type="hidden">
<input id="isExceptBoardUseFroalaImg" name="isExceptBoardUseFroalaImg" value="" type="hidden">
<input id="isGalleryBoard" name="isGalleryBoard" value="" type="hidden">
<input id="b12eff" name="b12eff" value="04aea2386a612f7de94e6538b6449a00" type="hidden">
<input id="fix_title_form_0" name="fix_title_form_0" value="문의" type="hidden">
<input id="bulletin_type" name="bulletin_type" value="title" type="hidden"><div class="xans-element- xans-board xans-board-write-9 xans-board-write xans-board-9 cscenter-layout ">
<div class="contents-block">
           <div class="cscenter-base-block">             
                <div class="base-block">
                    <div class="title-block">
                        <h2>Write Form</h2>
                    </div>
                    <fieldset>        
                        <div class="textarea">
                        <div id="subject"><label>Title</label><input name="title" ></div>
            <!-- CSS -->
            <link rel="stylesheet" href="//img.echosting.cafe24.com/editors/froala/3.2.2/css/froala_editor.pkgd.min.css?vs=2212281163">
            <link rel="stylesheet" href="//img.echosting.cafe24.com/editors/froala/css/themes/ec_froala.css?vs=2212281163">
            <!-- HTML -->
          <textarea style="width: 100%; display: none;" name="content" id="content" class="ec-fr-never-be-duplicated"></textarea>
            <!-- JavaScript -->
            <script type="text/javascript" src="//img.echosting.cafe24.com/editors/froala/js/polyfill.min.js?vs=2212281163"></script>
            <script type="text/javascript" src="//img.echosting.cafe24.com/editors/froala/3.2.2/js/froala_editor.pkgd.min.js?vs=2212281163"></script>
            <script type="text/javascript" src="//img.echosting.cafe24.com/editors/froala/js/i18n/ko_KR.js?vs=2212281163"></script>
            <!-- Run Froala Script -->
            <script>
              var EC_FROALA_ID = null;
              // isSimplexEditorFill 체크시에 필요함
              var EC_FROALA_INSTANCE = null;
              // scroll 버그 대응을 위해 필요.
              var fScrollPosition = 0;
              // 다중 이미지 삽입시 생기는 버그 대응
              var iCheckedImageListCount  = 0;
              var aCheckedImageList = [];
              var aInsertedImageList = [];
              var isBeforeImageRemove = false;
              
              (function() {
                var d = "";
                try {
                    var o = {"key":"DUA2yF3G1E1A5A2A2pZGCTRSAPJWTLPLZHTQQe1JGZxC4B3A3E2B5A1E1E4I1C2==","toolbarSticky":false,"theme":"ec-froala","attribution":false,"htmlRemoveTags":["script"],"htmlAllowedEmptyTags":["*"],"iframe":true,"iframeStyle":".fr-view{font-size: 12px;}","iframeStyleFiles":["\/\/img.echosting.cafe24.com\/editors\/froala\/css\/froala_style.min.css?vs=2212281163"],"heightMin":400,"language":"ko_KR","paragraphFormatSelection":true,"fontFamilySelection":true,"fontSize":["8","9","10","12","14","16","18","20","22","24","26","28","30"],"fontSizeSelection":true,"linkInsertButtons":["linkBack"],"quickInsertButtons":["ul","ol","hr"],"codeMirror":false,"entities":"&#60;&#62;","imageEditButtons":["imageAlign","imageRemove","|","imageLink","linkOpen","linkEdit","linkRemove","-","imageDisplay","imageStyle","imageAlt","imageSize"],"tableEditButtons":[],"tableInsertHelper":false,"imageDefaultMargin":0,"imageDefaultWidth":0,"imageUpload":false,"imageInsertButtons":["imageUpload"],"imageMaxSize":5242880,"filesManagerMaxSize":5242880,"toolbarButtons":{"moreText":{"buttons":["paragraphFormat","fontFamily","fontSize","bold","italic","underline","strikeThrough","textColor","backgroundColor","subscript","superscript","clearFormatting"],"buttonsVisible":5},"moreParagraph":{"buttons":["formatOL","formatUL","alignLeft","alignCenter","alignRight","outdent","indent","alignJustify","lineHeight"],"buttonsVisible":5},"moreRich":{"buttons":["insertTable","insertLink","insertHR","emoticons","specialCharacters"],"buttonsVisible":0},"moreMisc":{"buttons":["undo","redo","fullscreen","html","print","spellChecker","selectAll"],"align":"right","buttonsVisible":2}},"toolbarButtonsSM":{"moreText":{"buttons":["paragraphFormat","fontFamily","fontSize","bold","italic","underline","strikeThrough","textColor","backgroundColor","subscript","superscript","clearFormatting"],"buttonsVisible":4},"moreParagraph":{"buttons":["formatOL","formatUL","alignLeft","alignCenter","alignRight","outdent","indent","alignJustify","lineHeight"],"buttonsVisible":2},"moreRich":{"buttons":["insertTable","insertLink","insertHR","emoticons","specialCharacters"],"buttonsVisible":0},"moreMisc":{"buttons":["undo","redo","fullscreen","html","print","spellChecker","selectAll"],"align":"right","buttonsVisible":2}},"toolbarButtonsXS":{"moreText":{"buttons":["paragraphFormat","textColor","backgroundColor","bold","italic","underline","strikeThrough"],"buttonsVisible":1},"moreParagraph":{"buttons":["formatOL","formatUL","alignLeft","alignCenter","alignRight"],"buttonsVisible":0},"moreRich":{"buttons":["insertLink"]},"moreMisc":{"buttons":["undo","redo","html"],"buttonsVisible":0,"align":"right"}},"htmlDoNotWrapTags":["script","style","meta","link"],"htmlAllowedStyleProps":[".*"],"htmlAllowedTags":[".*"],"htmlAllowedAttrs":[".*"],"fontFamily":{"Dotum,sans-serif":"Dotum","Gulim,sans-serif":"Gulim","Batang,sans-serif":"Batang","Gungsuh,sans-serif":"Gungsuh","Arial,Helvetica,sans-serif":"Arial","Tahoma,Geneva,sans-serif":"Tahoma","Verdana,Geneva,sans-serif":"Verdana","Fixedsys,sans-serif":"Fixedsys","'Times New Roman',Times,serif":"Times New Roman","helvetica,sans-serif":"Helvetica","sans-serif":"Sans-serif","palatino,sans-serif":"Palatino","'Comic Sans MS',sans-serif":"Comic Sans MS","sand,sans-serif":"Sand","'Courier New',sans-serif":"Courier New","courier,sans-serif":"Courier","monospace,sans-serif":"Monospace","Georgia,serif":"Georgia","SimSun,sans-serif":"SimSun","SimHei,sans-serif":"SimHei","'MS PGothic',sans-serif":"MS PGothic","'MS PMincho',sans-serif":"MS PMincho","'MS UI PGothic',sans-serif":"MS UI PGothic","Meiryo,sans-serif":"Meiryo"},"colorsText":["#FF0000","#FF6C00","#FFAA00","#FFEF00","#A6CF00","#009E25","#00B0A2","#0075C8","#3A32C3","#7820B9","#EF007C","#000000","#252525","#464646","#636363","#7D7D7D","#9A9A9A","#FFE8E8","#F7E2D2","#F5EDDC","#F5F4E0","#EDF2C2","#DEF7E5","#D9EEEC","#C9E0F0","#D6D4EB","#E7DBED","#F1E2EA","#ACACAC","#C2C2C2","#CCCCCC","#E1E1E1","#EBEBEB","#FFFFFF","#E97D81","#E19B73","#D1B274","#CFCCA2","#61B977","#53AEA8","#518FBB","#6A65BB","#9A54CE","#E573AE","#5A504B","#767B86","#951015","#6E391A","#785C25","#5F5B25","#4C511F","#1C4827","#0D514C","#1B496A","#2B285F","#45245B","#721947","#352E2C","#3C3F45"],"colorsBackground":["#FF0000","#FF6C00","#FFAA00","#FFEF00","#A6CF00","#009E25","#00B0A2","#0075C8","#3A32C3","#7820B9","#EF007C","#000000","#252525","#464646","#636363","#7D7D7D","#9A9A9A","#FFE8E8","#F7E2D2","#F5EDDC","#F5F4E0","#EDF2C2","#DEF7E5","#D9EEEC","#C9E0F0","#D6D4EB","#E7DBED","#F1E2EA","#ACACAC","#C2C2C2","#CCCCCC","#E1E1E1","#EBEBEB","#FFFFFF","#E97D81","#E19B73","#D1B274","#CFCCA2","#61B977","#53AEA8","#518FBB","#6A65BB","#9A54CE","#E573AE","#5A504B","#767B86","#951015","#6E391A","#785C25","#5F5B25","#4C511F","#1C4827","#0D514C","#1B496A","#2B285F","#45245B","#721947","#352E2C","#3C3F45"],"docId":"content"};
                    // IE tableEditbuttons 이슈
                    o["tableEditButtons"] = FroalaEditor.DEFAULTS.tableEditButtons.filter(function(tableEditButtonName) {
                        return tableEditButtonName.indexOf("Style") === -1;
                    });

                    o["events"] = {
                        "filesManager.beforeUpload": function(files) {
                            this.opts.filesManagerUploadURL = getConvertUrlBeforeUpload(this.opts.filesManagerUploadURL);
                        },
                        "image.beforeUpload": function(images) {
                            this.opts.imageUploadURL = getConvertUrlBeforeUpload(this.opts.imageUploadURL);
                        },

                        "image.inserted": function(oImage, response) {
                            var sInstanceId = "content";
                            // 파일업로더로 이미지가 넘어오는경우에는 itslog가 이미 생성된 이미지기때문에 처리하지않음.
                            if ((sInstanceId === "product_description" || sInstanceId === "product_description_mobile") && typeof response !== "undefined") {
                                oImage.attr("data-use_its", true);
                            }
                           
                            if (iCheckedImageListCount >= 0) {
                                iCheckedImageListCount++;
                                aInsertedImageList.push(oImage);
                                
                                if (aCheckedImageList.length === iCheckedImageListCount || aCheckedImageList.length === 0) {
                                    // 마지막 이미지
                                    for (var i = 0; i < aInsertedImageList.length; i++) {
                                        aInsertedImageList[i].after("<br>");
                                    }
                                    
                                    // 리셋
                                    iCheckedImageListCount = 0;
                                    aCheckedImageList = [];
                                    aInsertedImageList = [];
                                }
                            }
                        },
                        "image.error": function (error, response) {
                            if (typeof JSON != "undefined") {
                                r = JSON.parse(response);
                                alert(r["error"]);
                            }
                        },
                        "image.loaded": function($img) {
                            // IE에서 이미지 로드 후, 커서 위치 재조정
                            if (/(trident).+rv[:\s]([\w\.]{1,9}).+like\sgecko/i.test(navigator.userAgent)) {
                                var _this = this;
                                var _img = $img[0];
                                setTimeout(function() {
                                  _this.selection.setAfter(_img);
                                  _this.selection.restore();
                                }, 300);
                            }
                        },
                        "filesManager.error": function (error, response) {
                            if (typeof JSON != "undefined") {
                                r = JSON.parse(response);
                                alert(r["error"]);
                            }
                        },
                        "commands.before": function(sCommand) {
                            // 코드뷰 토글시
                            if (sCommand === "html") {
                                var sContent = this.el.innerHTML;
                                sContent = sContent.replace(/<\/?null>/gi, "");
                                this.el.innerHTML = getReplaceZeroWidthSpace(sContent);
                                replaceToFroalaNewLine(this);
                            }
                            
                            // 전체화면 모드 켜기
                            if (sCommand === "fullscreen" && !this.fullscreen.isActive()) {
                                this.$box[0].setAttribute("data-window-scroll-y", window.scrollY || window.pageYOffset);
                            }
                            // 다중 이미지 삽입
                            if (sCommand === "insertAll") {
                                var popup = this.popups.get("filesManager.insert");
                                aCheckedImageList = popup.find(".fr-files-checkbox .fr-file-insert-check:checked")
                            }

                            if (sCommand === "insertSpecialCharacter") {
                                setScrollPosition(this, getIframeCursorPoint(this));
                            }
                        },
                        "commands.after": function(sCommand) {
                            if (sCommand === "html") {
                                removeFroalaNewLine(this);
                            }
                            
                            if (sCommand === "insertFiles") {
                                var enableButton= document.querySelector(".fr-trim-button.fr-plugins-enable");
                                if (enableButton) enableButton.click();
                            }
                            
                            if (sCommand === "selectAll") {
                                this.el.focus();
                            }
                            
                            // 전체 화면 토글시에 컨텐츠 높이를 정상적으로 반영하지못하는 이슈 대응
                            if (sCommand === "fullscreen") {
                                var _this = this;
                                setTimeout(function() {
                                    _this.size.syncIframe();
                                }, 300);
                                
                                if (this.fullscreen.isActive() === false) {
                                    window.scrollTo(0, this.$box[0].getAttribute("data-window-scroll-y"));
                                }
                            }
                            
                            if (sCommand === "insertSpecialCharacter") {
                                this.$wp.get(0).scrollTop = fScrollPosition;
                            }
                        },
                        "focus": function() {
                            if (this.iframe_document) {
                                var iframeHeight = this.iframe_document.body.scrollHeight;
                                this.$iframe[0].style.height = iframeHeight + "px";
                            }
                            
                            this.el.innerHTML = getReplaceZeroWidthSpace(this.el.innerHTML);
                        },

                        "image.beforeRemove": function(aImage) {
                            isBeforeImageRemove = true;
                            var cursorPoint = aImage[0].offsetTop; // 제거 대상 이미지의 offsetTop 값으로 정의
                            setScrollPosition(this, cursorPoint);
                        },
                        "image.removed": function() {
                            if (isBeforeImageRemove === true) {
                                this.$wp.get(0).scrollTop = fScrollPosition; // 에디터 자체 버그동작이 수행 된 후 계산 해 둔 값으로 스크롤 위치를 이동
                            }
                            isBeforeImageRemove = false;
                        },
                        "keydown": function(e) {
                            if (isScrollFix(this, e) === true) {
                                setScrollPosition(this, getIframeCursorPoint(this));
                            }
                        },
                        "keyup": function(e) {
                            if (isScrollFix(this, e) === true) {
                                this.$wp.get(0).scrollTop = fScrollPosition;
                            }
                        },
                        "paste.before": function() {
                            if (this.fullscreen.isActive() === false) {
                                setScrollPosition(this, getIframeCursorPoint(this));
                            } 
                        },
                        "paste.after": function(e) {
                            if (this.fullscreen.isActive() === false) {
                                this.$wp.get(0).scrollTop = fScrollPosition;
                            } 
                        },
                        "codeView.update": function() {
                            this.el.innerHTML = getReplaceZeroWidthSpace(this.el.innerHTML);
                            this.el.innerHTML = decodeUriAttribute(this.el.innerHTML);
                        }
                    };

                    EC_FROALA_INSTANCE = new FroalaEditor("textarea#content.ec-fr-never-be-duplicated", o, function() {
                        EC_FROALA_ID = this.id;
                        if (d != "") {
                            this.el.innerHTML = this.clean.html(d);
                            // 타겟 textarea 태그에 change 트리거링
                            this.undo.saveStep();
                        }
                        var script = document.createElement("script");
                        script.src = "//img.echosting.cafe24.com/editors/froala/js/polyfill.min.js?vs=2212281163";
                        this.$iframe.get(0).contentWindow.document.head.appendChild(script);
                        if (this.el.innerHTML === "<br>") {
                            this.el.innerHTML = "<p><br></p>";
                        }
                    });

                    EC_FROALA_INSTANCE.$iframe[0].setAttribute("id", "content" + "_IFRAME");
                    EC_FROALA_INSTANCE.$iframe[0].contentWindow.document.body.setAttribute("id", "content" + "_BODY");

                    EC_FROALA_INSTANCE.isEmptyContent = function () {
                        var c = getContentFromFroala(this.id);
                        // 스페이스바만 입력 저장시, validation을 위해 처리
                        var val = c.replace(/\<br\/?\>|\<\/?p\>|\s|&nbsp;/gi, "");
                        if ("" == val) return true;
                        return false;
                    };

                    EC_FROALA_INSTANCE.getContentFromFroala = function() {
                        return getContentFromFroala(this.id);
                    };

                    EC_FROALA_INSTANCE.applyContentToFroala = function(content) {
                        return applyContentToFroala(content, this.id);
                    };

                    EC_FROALA_INSTANCE.setValueBeforeSubmit = function(sSection) {
                        return setValueBeforeSubmit(sSection, this.id);
                    };

                    if (typeof $Editor ===  "undefined") {
                        $Editor = {};
                    }
                    $Editor["content"] = EC_FROALA_INSTANCE;
                } catch (e) {
                    document.getElementById("content").value = d;
                    console.error(e);
                } finally {
                }
              })();
              
              function decodeUriAttribute(content) {
                  return content.replace(/(?:href=|src=)(?:"([^"]+)|'([^']+))[^>]/g, function (match, p1, p2) {
                      var p = p1 ? p1 : p2;
                      if (/%20|\s|%3A/g.test(p)) {
                          try {
                              return match.replace(p, decodeURIComponent(p).trim());
                          } catch (e) {
                              return match;
                          }
                      } else {
                          return match;
                      }
                  });
              }

              //플로알라 에디터 내용 조회
              function getContentFromFroala(id) {
                  try {
                    var sFroalaId = (typeof id === "undefined") ? EC_FROALA_ID : id;
                    var oEditor = FroalaEditor.INSTANCES.filter(function (instance) {
                      return instance.id === sFroalaId;
                    });
                    if (oEditor[0].codeView.isActive()) {
                      oEditor[0].codeView.toggle();
                    }

                    oEditor[0].el.innerHTML = decodeUriAttribute(oEditor[0].el.innerHTML);
                    
                    return oEditor[0].el.innerHTML;

                  } catch (e) {
                    console.error(e);
                    return false;
                  }
              }

              //플로알라 에디터 내용 적용
              function applyContentToFroala(content, id) {
                  try {
                    var sFroalaId = (typeof id === "undefined") ? EC_FROALA_ID : id;
                    var oEditor = FroalaEditor.INSTANCES.filter(function (instance) {
                      return instance.id === sFroalaId;
                    });

                    oEditor[0].el.innerHTML = oEditor[0].clean.html(content);

                    // textarea 태그에 change 트리거링
                    oEditor[0].undo.saveStep();
                    return true;
                  } catch (e) {
                    console.error(e);
                    return false;
                  }
              }

              // useclasses 옵션 사용시, froala 커스텀 속성값 (fr-draggable) 제거
              function setValueBeforeSubmit(sSection, id) {
                try {
                    var sFroalaId = (typeof id === "undefined") ? EC_FROALA_ID : id;
                    var oEditor = FroalaEditor.INSTANCES.filter(function (instance) {
                      return instance.id === sFroalaId;
                    });

                    var contents = oEditor[0].el.innerHTML;
                    document.getElementById(sSection).value = contents.replace(/\sclass=("|')fr-draggable("|')|\s?fr-draggable\s?|<\/?null>/gi, "");

                    return true;
                  } catch (e) {
                    console.error(e);
                    return false;
                  }
              }

              //플로알라 front reset CSS 가져오기
              //Deprecated
              function getFroalaResetCSS() {
                return "//img.echosting.cafe24.com/editors/froala/css/froala_editor_reset.css?vs=2212281163;"
              }

              //플로알라 front style CSS 가져오기
              function getFroalaStyleCSS() {
                return "//img.echosting.cafe24.com/editors/froala/css/froala_style.min.css?vs=2212281163";
              }

              //플로알라 front style EC CSS 가져오기
              function getFroalaECStyleCSS() {
                return "//img.echosting.cafe24.com/editors/froala/css/froala_style_ec.min.css?vs=2212281163";
              }

              // 파일 업로드시 랜덤한 파라미터 값 추가
              function getConvertUrlBeforeUpload(sUploadUrl) {
                var aSplitUrl = sUploadUrl.split("?");
                var oParam = getParameterUploadUrl(aSplitUrl[1]);

                return decodeURIComponent(aSplitUrl[0] + "?" + "uploadPath=" + oParam["uploadPath"] + "&uploadId=" + Math.floor((Math.random() * 100000)).toString());
              }

             function getParameterUploadUrl(sQueryString) {
                var aParam = {};

                if (sQueryString) {
                    var aFields = sQueryString.split("&");
                    var aField  = [];
                    for (var i=0; i<aFields.length; i++) {
                        aField = aFields[i].split("=");
                        aParam[aField[0]] = aField[1];
                    }
                }
                return aParam;
            }

            // 스크롤 위치 수정해야하는지 확인
            function isScrollFix (oEditor, event) {
                if (oEditor.fullscreen.isActive() === true) {
                    return false;
                }
                var sKey = event.key.toUpperCase();
                var bResult = false;
                if (sKey === "ENTER") {
                    // 구문의 중간 지점의 엔터 입력만 요구 조건에 해당함
                    bResult = oEditor.selection.get().focusNode !== oEditor.$el.get(0);
                } else if (sKey === "BACKSPACE" || sKey === "DELETE") {
                    bResult = true;
                }
                return bResult;
            }
            
            // 스크롤 위치 수정
            function setScrollPosition (oEditor, fCursorPoint) {
                var oContentWrapper = oEditor.$wp.get(0); // 에디터 편집 영역 컨테이너
                var fStartPoint = oContentWrapper.scrollTop; // 보여지는 편집 영역의 시작 지점
                var fEndPoint = oContentWrapper.scrollTop + (oContentWrapper.clientHeight - 20); // 보여지는 편집 영역의 끝 지점 (여백 포함)
 
                if (fCursorPoint > 0 && fCursorPoint < fStartPoint) {
                    // 커서가 보여지는 영역보다 위에 위치
                    fScrollPosition = fCursorPoint;
                } else if (fCursorPoint > 0 && fCursorPoint > fEndPoint) {
                    // 커서가 보여지는 영역보다 아래에 위치
                    fScrollPosition = fCursorPoint - (oContentWrapper.clientHeight - 20); // 여백 포함
                } else {
                    // 값이 0 이라서 무효화 됐거나, 보여지는 영역에 있는 경우 - 위치를 그대로 유지
                    fScrollPosition = fStartPoint;
                }
            }
            
            // 커서 포인트 반환
            function getIframeCursorPoint(editor) {
                var iframeDocument = editor.$iframe.get(0).contentDocument;
                var anchorNode = iframeDocument.getSelection().anchorNode;
                var iframeRange = iframeDocument.createRange();
                iframeRange.selectNode(anchorNode);
                return iframeRange.getBoundingClientRect().top;
            }
   
            // 폭없는 공백에서 폭과 줄바꿈 없는 공백으로 치환 (폭없는 공백은 플로알라버그로인해 지원하지않음)
            function getReplaceZeroWidthSpace(sContent) {
                return sContent.replace(/\u200B/g, "&#65279;");
            }
            
            // \n 제거되는 사양에대한 대응 : 플로알라에서 코드뷰 토글시 줄바꿈되는 태그로 변경
            function replaceToFroalaNewLine(oEditor) {
                if (oEditor.codeView.isActive() === true) {
                    return;
                }
                
                var oWhiteSpacePreElements = oEditor.$el.get(0).querySelectorAll('*[style*="white-space: pre"], *[style*="white-space:pre"]');
                for (var iIndex = 0; iIndex < oWhiteSpacePreElements.length; iIndex++) {
                    oWhiteSpacePreElements[iIndex].innerHTML = oWhiteSpacePreElements[iIndex].innerHTML.replace(/\n/g, '<span class="fr-newline"></span>');
                }
            }            
            
            // \n 제거되는 사양에대한 대응 : 코드뷰 토글시 줄바꿈 태그 \n으로 변경
            function removeFroalaNewLine(oEditor) {
                if (oEditor.codeView.isActive() === false) {
                    return;
                }
                
                var sCodeViewValue;
                if (typeof oEditor.opts.codeMirror === "function") {
                    // 상품 등록/수정 에디터는 코드미러를 사용하기때문에 분기처리
                    sCodeViewValue = oEditor.$wp.get(0).querySelector(".CodeMirror").CodeMirror.getValue();
                    oEditor.$wp.get(0).querySelector(".CodeMirror").CodeMirror.setValue(sCodeViewValue.replace(/<span class=[',"]fr-newline[',"]><\/span>/g, '\n'));
                } else {
                    sCodeViewValue = oEditor.$wp.get(0).querySelector(".fr-code").value;
                    oEditor.$wp.get(0).querySelector(".fr-code").value = sCodeViewValue.replace(/<span class=[',"]fr-newline[',"]><\/span>/g, '\n');
                }
            }
            
            </script></div> 

                        <div class="attach-block ">
                            <ul>
<li class="title">파일첨부</li>
                                <li>
                                    <input name="attach_file[]" type="file">                                    <input name="attach_file[]" type="file">                                </li>
                            </ul>
</div>

                        <div class="password-block ">
                            <ul>
<li class="title">비밀번호</li>
                                <li><input id="password" name="password" fw-filter="" fw-label="비밀번호" fw-msg="" value="" type="password"></li>
                            </ul>
</div>

                        <div class="ul-desc">
                            <ul>
<li>
                                    게시글 작성시 개인정보(전화번호, 이메일, 이름 등)가 포함되지 않도록 주의해 주세요.<br>
                                    개인정보가 포함된 경우 관리자에 의해 통보 없이 삭제될 수 있습니다.<br>
</li>
                                <li>제품 불량 및 오배송의 경우, 해당 제품 사진을 등록해주시면 보다 빠르고 정확한 안내가 가능합니다.</li>
                                <li>첨부파일의 용량은 최대 10MB입니다.</li>
                                <li>가로 사이즈가 587픽셀을 초과하는 경우 자동으로 리사이징 됩니다.</li>
                            </ul>
</div>
                    </fieldset>
</div>
                

                
                <div class="side-block">
                    <!-- faq-block -->
                    <div class="xans-element- xans-board xans-board-listpackage-3 xans-board-listpackage xans-board-3 faq-block "><div class="title-block">
                            <h2>FAQ TOP5</h2>
                            <span><a href="/cscenter/faq.html">전체보기</a></span>
                        </div>
<!-- faq-item-block -->
<div class="faq-item-block">
                            <dl class="item-member item-top5 active">
<dt><h2>회원가입 적립금은 바로 사용 가능한가요?</h2></dt>
    <dd>
        <p>회원가입 시 가입 적립금 4,000원을 지급해 드리며 구매 시 바로 사용 가능합니다.</p>
    </dd>
</dl>
<dl class="item-member item-top5 active">
<dt><h2>마뗑킴 회원가입 혜택에 대해 궁금해요.</h2></dt>
    <dd>
        <p>
            마뗑킴의 회원이 되시면 다양한 혜택을 받아 보실 수 있습니다.<br><br>
            ① 회원가입 시 바로 사용할 수 있는 4,000원 신규 적립금지급<br>
            ② 구매금액에 대한 1% 적립금지금<br>
            -1만원 이상 상품 구매후 배송이 완료 되면 1% 적립금 지급<br>

            ③ 매월 회원등급별 혜택제공<br>
            ‣ VVIP<br>
            적립 10%,구매 할인 7%,생일쿠폰 30%<br>

            ‣ VIP<br>
            적립 7%,구매 할인 5%,생일쿠폰 20%<br>

            ‣ GOLD<br>
            적립 4%,구매 할인 3%,생일쿠폰 15%<br>
            ‣ SILVER<br>
            적립 2%,구매 할인 2%,생일쿠폰 10%<br>
            ‣ NEW MEMBER<br>
            WELCOME 쿠폰 5%<br><br>
            + SALE 상품을 제외한 모든 상품, 상시 적용<br>
            + 비회원은 멤버십 혜택이 적용되지 않습니다.<br>
            + 6개월마다 선정하여 등급 조정이 됩니다.<br>
            + 6개월 기준으로 매월 1일 변경될 예정입니다.<br>
            + 이번 회원 등급은 지난 6개월간 구매 고객님들을 대상으로 선정될 예정이며, 회원 로그인 후 구매 건에 대해서만 산정되는 점 참고부탁 드립니다.<br>
            ④ 상시무료배송
        </p>
    </dd>
</dl>
<dl class="item-member item-top5 active">
<dt><h2>생일쿠폰 및 할인 쿠폰에 대해 알려주세요.</h2></dt>
    <dd>
        <p>
            -생일쿠폰은 회원가입시 등록한 생일에 한아이디당 1년에 한번 발급됩니다.(사용기간-발급일로부터 30일 이내)<br>
            ‣ VVIP 30% 생일쿠폰 발송.<br>
            ‣ VIP 20%생일쿠폰 발송.<br>
            ‣ GOLD 15%생일쿠폰 발송.<br>
            ‣ SILVER 10%생일쿠폰 발송<br>
            - 매달 지금되는 쿠폰은 당월에 사용하지않을 경우 소멸됩니다.<br>
            - 회원 탈퇴시 모든 적립금/할인 혜택은 자동 소멸되며,이전 등급으로 재조정은 불가하니 꼭 신중히 처리 부탁드립니다.<br>
            - 마똉킴의 회원이 되시면 이 외 더 많은 혜택을 받으실 수 있습니다. [회원혜택보기 / MATINKIM MEMBERSHIP BENEFITS]
        </p>
    </dd>
</dl>
<dl class="item-member item-top5 active">
<dt><h2>비밀번호를 분실했는데 어떻게 해야하나요?</h2></dt>
    <dd>
        <p>
            로그인 페이지에서 아이디/비밀번호 찾기 버튼을 눌러주세요.<br>
            휴대폰인증을 받으시거나 이메일로 비밀번호 받아보신후 로그인을 해주시면 됩니다.<br><a href="/member/id/find_id.html">아이디 찾기</a> &nbsp;&nbsp; <a href="/member/passwd/find_passwd_info.html">비밀번호 찾기</a>
        </p>
    </dd>
</dl>
<dl class="item-order">
<dt><h2>주문 먼저 하고 무통장입금을 나중에 하면 배송 순서가 밀리나요?</h2></dt>
    <dd>
        <p>마뗑킴의 모든 주문은 결제 완료자 순으로 순차 배송이 되며 무통장 구매 후 리오더 오픈 이전에 입금이 되지 않을 경우 해당 주문 건은 입금된 시간 기준 재오픈 차수 배송일에 해당이 되는 점 참고 부탁드립니다.
        (무통장 주문 후 무분별한 수량 확보를 방지하기 위함 이오니 많은 양해 바랍니다.)</p>
    </dd>
</dl>
<dl class="item-order">
<dt><h2>비회원으로도 구매할 수 있나요?</h2></dt>
    <dd>
        <p>
            회원/비회원으로 구매가 가능합니다.<br>
            비회원인 경우에는 고객님께서 주문번호로만 주문 확인이 가능하며,
            주문번호를 잊어 버리셨다면 고객센터로 문의주시면 자세한 안내 도와드리겠습니다.<br>
            회원가입을 하시면 마뗑킴을 보다 편리하게 이용하실수 있습니다.<br>
            ① 마이페이지에서 주문취소 및 교환, 반품을 직접 요청하실 수 있습니다.<br>
            ② 주문시마다 배송지를 입력하지 않아도 됩니다.<br>
            ③ 그동안의 주문내역을 한눈에 보실 수 있습니다.
        </p>
    </dd>
</dl>
<dl class="item-order">
<dt><h2>이미 주문을 했는데, 추가주문 하고 싶어요.</h2></dt>
    <dd>
        <p>
            주문 이후 상품 추가는 불가합니다.<br>
            상품 추가,변경(교환)을 원하신다면 취소/반품후 신규 주문 부탁드립니다.
        </p>
    </dd>
</dl>
<dl class="item-order">
<dt><h2>무통장 결제 입금 기한은 언제까지인가요?</h2></dt>
    <dd>
        <p>
            주문후 입금기한은 12시간이며,기간내 미입금시 주문서는 자동취소됩니다.<br>
            입금기한 만료로 주문서가 취소된경우 신규 주문서 작성을 부탁드립니다.<br>
            (자동취소된 주문서는 원복이 어렵습니다)
        </p>
    </dd>
</dl>
<dl class="item-order">
<dt><h2>적립금을 사용하여 결제할 수 있나요?</h2></dt>
    <dd>
        <p>
            적립금 사용 가능합니다. 적립금사용 제외한 나머지 주문 금액은 적립 되지 않습니다.<br>
            또한 주문후에 받아보신 상품을 반품 하셨을때에 적립금이 원복 되지 않습니다.
        </p>
    </dd>
</dl>
<dl class="item-order">
<dt><h2>상품구매시 적립금이 적립되는 방법에 대해 알려주세요.</h2></dt>
    <dd>
        <p>
            상품금액의 1%가 배송종료 기점으로 7일뒤 자동적립 됩니다.
        </p>
    </dd>
</dl>
<dl class="item-order">
<dt><h2>현금영수증 발급은 어떻게 받나요?</h2></dt>
    <dd>
        <p>
            가상계좌(무통장입금), 실시간 계좌이체로 결제 시, 마이페이지 주문내역에서 현금영수증 발급을 받아보실 수 있습니다.<br>
            현금영수증 신청은 현금결제/실시간계좌이체 시에만 가능하며 결제일로 90일 이내로 신청해주시면 됩니다.<br>
            고객센터로 요청해 주시면 발급이 가능합니다. 고객센터 ☎︎ 1877-8170<br></p>
    </dd>
</dl>
<dl class="item-delivery">
<dt><h2>국내배송비는 얼마인가요?</h2></dt>
    <dd>
        <p>
        구매금액에 상관없이 상시무료배송 됩니다.:)<br>
        마뗑킴에서 구매하시고 편하게 무료배송서비스를 받아보세요.
        </p>
    </dd>
</dl>
<dl class="item-delivery">
<dt><h2>배송기간은 얼마나 걸리나요?</h2></dt>
    <dd>
        <p>
            배송기간 :각 상품에 따라 1일 ~ 10일 (영업일 기준),프리오더 진행상품은 각 상품에 고지.<br>
            제작사의 사정으로 인하여 지연 및 품절이 발생될 수 있습니다.<br>
            추가 입고가 필요한 상품이거나, 품절된 상품은 개별 연락 드리겠습니다.
        </p>
    </dd>
</dl>
<dl class="item-delivery">
<dt><h2>묶음배송을 어떻게 하나요?</h2></dt>
    <dd>
        <p>
            고객센터나 1:1 게시판에 묶음배송으로 요청해 주시면 빠른처리 도와드리겠습니다.<br>
            상품이 모두 입고 될때까지 시일이 소요되는 점 참고 부탁드립니다.
        </p>
    </dd>
</dl>
<dl class="item-delivery">
<dt><h2>배송전 주소지 변경</h2></dt>
    <dd>
        <p>
            배송전 주소지 변경은 사전에 1:1게시판 또는 고객센터로 연락 주셔야 합니다.<br>
            게시판에 남겨주실 경우 정확한 지번,도로명 주소로 남겨 주셔야 하며<br>
            배송일은 사전에 안내 된 기간 보다 빠르게 출고 될 수 있는 점 참고 하셔서 꼭 사전에 접수 부탁드립니다.
        </p>
    </dd>
</dl>
<dl class="item-delivery">
<dt><h2>배송 출고 문자를 받았는데 조회가 되질 않아요.</h2></dt>
    <dd>
        <p>
            배송조회는 문자 수신 다음날부터 조회가 가능합니다.<br>
            택배사 사정에 따라 배송상태 확인이 지연될 수 있습니다.<br>
            3일이상 배송 상태가 진행되지 않는다면 고객센터로 문의 부탁드립니다.
        </p>
    </dd>
</dl>
<dl class="item-claim">
<dt><h2>배송전 주문취소, 주소지 변경은 어떻게 하나요?</h2></dt>
    <dd>
        <p>
            1:1 게시판에 요청해 주시거나 고객센터로 취소요청 전화를 주시면 취소처리를 도와드리겠습니다.<br>
            결제금액 취소는 결제하신 수단으로만 취소처리 가능합니다.<br>
            환급시에는 결제하신 고객님 성함과 동일한 계좌로만 처리 가능합니다.<br>
            최초 카드결제이후 할부 개월수 변경/결제카드변경/결제수단 변경은 불가합니다.<br>
            취소된 금액을 타 주문서로 금액대체는 불가합니다.<br>
            배송전 주소지 변경은 1:1게시판 이나 고객센터로 연락 주셔야 변경 가능합니다.<br><br>
            [무통장입금 취소]<br>
            환급 받아보실 계좌번호를 고객센터 혹은 게시판으로 남겨주시면
            최대 2-3일후 환급 계좌로 환불 됩니다.<br><br>
            [카드 취소]<br>
            카드사를 통해 취소되는 금액만큼 카드취소처리가 됩니다.<br>
            부분 취소시 취소 금액만큼 카드 부분 결제 취소로 접수되며,가맹점 승인 취소로 취소처리 최대 5-7일 소요됩니다.<br><br>
            [휴대폰 취소]<br>
            휴대폰은 당월 취소만 가능하며,부분취소 불가합니다.<br>
            부분취소시 주문서 전체 취소후 신규 주문서를 작성해 주시길 바랍니다.<br>
            휴대폰 결제 시점으로부터 한달 이후가 되면 (당월취소 불가) 주문해주신 고객님 성함과 동일한 환불 계좌를 통해 환불처리 됩니다.<br></p>
    </dd>
</dl>
<dl class="item-claim">
<dt><h2>반품교환 접수는 어떻게 하나요?</h2></dt>
    <dd>
        <p>
            1:1 게시판이나 고객센터로 반품하실 상품을 말씀해 주세요:)<br>
            반품할 상품은 소포를 받은 날로부터 30일(배송 완료 일~반품 접수 일) 이내에 동봉된 반품 양식을 작성하여 '마뗑킴 물류센터'로 보내주셔야 합니다.<br>
            상품은 손상되거나 더럽혀지거나 세탁되거나 수선되거나 해져서는 안되며(상품 시착 외), 라벨이나 상품택, 위생 테이프가 부착된 상태여야 합니다.<br>
            자사에서 직접 반품 접수를 해드리며 기사님께서 방문 접수가 완료되면 영업일 기준 2~3일 내로 방문하실 예정이오니 상품을 잘 전달 부탁드립니다.<br><br>

            [교환 및 반품 안내]<br>
            *주문 이후 배송 전/후 상품추가, 동일 상품 컬러 변경, 타상품 교환은 불가합니다.<br>
            *상품 추가, 변경(교환)을 원하신다면 취소/반품 후 신규 주문 부탁드립니다.<br>
            단순 변심의 경우 택 제거 되지 않은 새 상품만 수령일로부터 7일 이내까지 교환·반품이 가능합니다. (교환/반품 비는 고객님 부담)<br>
            상품 하자(제품 자체에 결함으로 확인된 경우), 오배송의 경우 수령일로부터 30일 이내, 그 사실을 알 수 있었던 30일 이내까지 교환·반품이 가능합니다.<br>
            (교환, 반품 비 무료, 마뗑킴에서 부담)<br><br>

            아래의 경우에는 교환·반품 가능 기간에도 불구하고 거절될 수 있습니다.<br>
            - 고객님의 책임있는사유로 제품이 멸실 또는 훼손된 경우<br>
            - 고객님의 사용 또는 일부 소비에 의하여 제품의 가치가 현저히 감소한 경우<br>
            - 시간의 경과에 의하여 재판매가 곤란한 정도로 제품의 가치가 하락한 경우<br>
            - 고객님이 주문에 따라 개별적으로 생산되는 제품의 경우<br>
            - 향수, 세제 등 향이 배어 있는 제품의 경우<br>
            - 착용 흔적, 주름 발생이 있는 상품의 경우<br><br>

            [교환·반품 방법]<br>
            *배송 시 동봉되었던 교환·반품 카드를 참조해 주세요:)<br>
            교환·반품 가능 기간 이내에 마 뗑 킴 1:1 게시판 또는 고객센터로 접수 후 교환 반품 서를 동봉하여 제품 패킹을 부탁드립니다.<br>
            기사님께서 2~3일 내로 방문하실 예정이오니 상품을 잘 전달 부탁드립니다.<br>
            (미접수, 교환. 반품 신청서 미 동봉 시 확인 시간이 소요될 수 있습니다)직접 택배 접수 후 보내주실 땐 착불로 보내주셔야 합니다.<br>
            반품 택배 접수는 로젠택배(T.1588-9988)를 통해 직접 접수하실 수 있습니다.<br>
            교환·반품 비를 계좌로 입금 후 혹은 구매 금액에서 차감 신청 후 가능.<br><br>

            - 반품 배송비/교환배송비 구매 금액에 상관없이 4,600원/9,600원(제주도 및 산간 지역)<br>
            - 입금 계좌 : 기업은행 033-505930-01-045 (주)마뗑킴<br>
            * 택배비를 동봉하여 분실된 경우 추가로 지불해주셔야 하며 MATINKIM의 책임은 없습니다.<br></p>
    </dd>
</dl>
<dl class="item-claim">
<dt><h2>반품 교환 배송비는 얼마인가요?</h2></dt>
    <dd>
        <p>
            - 반품배송비/교환배송비 구매금액에 상관없이 4,600원/ 제주도 및 산간지역 9,600원<br>
            - 입금 계좌 : 기업은행 033-505930-01-045 (주)마뗑킴
        </p>
    </dd>
</dl>
<dl class="item-claim">
<dt><h2>방문접수를 요청했지만 며칠째 회수되지 않고 있는데 어떻게 해야 할까요?</h2></dt>
    <dd>
        <p>
            간혹 택배사의 사정으로 회수가 지연되는 경우가 있으며 주말,공휴일 제외 3일 동안 기사님으로부터 연락이 없으시다면 저희 마뗑킴 고객센터로 연락 주시면 방문접수 재요청해드리겠습니다.
        </p>
    </dd>
</dl>
<dl class="item-claim">
<dt><h2>제품이 불량이거나 오배송일 경우에는 어떻게 하면 될까요?</h2></dt>
    <dd>
        <p>
            불량,오배송의 경우 배송비는 마뗑킴에서 부담하며
            게시판에 글을 남겨주시거나 고객센터로 연락주시면 신속히 처리해드리겠습니다.
        </p>
    </dd>
</dl>
<dl class="item-claim">
<dt><h2>온라인 구매 상품을 오프라인에서 픽업/교환/반품할 수 있나요?</h2></dt>
    <dd>
        <p>
            온/오프라인 상품은 개별 시스템으로 운영되고 있기 때문에 온라인에서 결제 후 오프라인 매장에서의 픽업은 어려운 점 양해 부탁드리며 구매처에서만 교환 및 반품 가능합니다.<br></p>
    </dd>
</dl>
<dl class="item-offline item-top5 active">
<dt><h2>매장에서 구매한 상품을 온라인으로 반품할 수 있나요?</h2></dt>
    <dd>
        <p>
            오프라인매장과 온라인은 개별시스템으로 운영되고 있어 온라인으로 반품은 불가합니다.<br>
            매장에서 구매하신 상품은 영수증을 지참하시어 찾아주시면 처리해드리도록 하겠습니다.
        </p>
    </dd>
</dl>
</div>
</div>
                    <script>
                        document.addEventListener("DOMContentLoaded", function () {
                            // 진입 시 디폴트 카테고리
                            $('.faq-item-block .item-top5').addClass('active');

                            // 제목 클릭 시
                            $('.faq-item-block dl dt').each(function(i,elm){
                                $(elm).click(function() {
                                    if ($(elm).parent().hasClass('open')) {
                                        $(elm).parent().removeClass('open');
                                    } else {
                                        $(elm).parent().addClass('open');
                                    }
                                })
                            });
                        });

                    </script>
                    <!-- // faq-block -->
                </div>
                

            </div>
            


            <div class="btn-group-center submit-block">
                
                <button type="button" class="btn btn-md btn-white btn-pd32" onclick="location.href='/talks/tlist'"><span>취소</span></button>
                <button type="button" class="btn btn-md btn-dark btn-pd32" onclick="BOARD_WRITE.form_submit('boardWriteForm');"><span>확인</span></button>
            </div>



        </div>

</div>
</form>
</div>


        </div>
    </div>
</div>
<%@ include file="../include/footer.jsp"%>
</body>
</html>