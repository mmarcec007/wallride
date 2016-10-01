<froala>
    <script th:fragment="" th:inline="">
        /*<![CDATA[*/
        $(function () {
            var ms = [
                {
                    name: 'Image',
                    value:'<div class="col-sm-12"><img class="img-responsive" src="../../resources/img/sample.jpg" alt="" /></div><br/>'
                },
                {
                    name: 'Title＋Content',
                    value:'<h2>Lorem ipsum dolor</h2><p>Lorem ipsum dolor sit amet, vis affert mollis maiestatis no, at iusto rationibus eum, cu vix malis graeci sententiae. Adhuc tamquam et nec. Diam viderer feugiat ut nam, quo te consul scriptorem intellegebat. Diam audiam voluptua eam id. Te eos illum putant voluptatum.</p><br/>'
                },
                {
                    name: 'Image:Text',
                    value:'<div class="row"><div class="col-sm-6"><img src="../../resources/img/sample.jpg" /></div><div class="col-sm-6"><p>Lorem ipsum dolor sit amet, vis affert mollis maiestatis no, at iusto rationibus eum, cu vix malis graeci sententiae. Adhuc tamquam et nec. Diam viderer feugiat ut nam, quo te consul scriptorem intellegebat. Diam audiam voluptua eam id. Te eos illum putant voluptatum.</p></div><br/>'
                },
                {
                    name: 'Image x 2',
                    value: '<div class="row"><div class="col-sm-6"><img src="../../resources/img/sample.jpg" /></div><div class="col-sm-6"><img src="../../resources/img/sample.jpg" /></div></div><br/>'
                },
                {
                    name: 'Column x 3',
                    value: '<div class="row"><div class="col-sm-4"><img src="../../resources/img/sample.jpg" /></div><div class="col-sm-4"><img src="../../resources/img/sample.jpg" /></div><div class="col-sm-4"><p>Lorem ipsum dolor sit amet, vis affert mollis maiestatis no, at iusto rationibus eum, cu vix malis graeci sententiae. Adhuc tamquam et nec. Diam viderer feugiat ut nam, quo te consul scriptorem intellegebat. Diam audiam voluptua eam id. Te eos illum putant voluptatum.</p></div></div><br/>'
                },
            ];

            var $contents = [];
            $.each(ms, function(i, m){
                var values = {name: m.name, value: i};
                $contents.push(values);
            });

            var commandName = 'placeholders',
                    iconName = commandName + 'Icon',
                    buildListItem = function (name, value) {
                        // Depending on prior validation, escaping may be needed here.
                        return '<li><a class="fr-command" data-cmd="' + commandName +
                                '" data-param1="' + value + '" title="' + name + '">' +
                                name + '</a></li>';
                    };

            // Define a global icon (any Font Awesome icon).
            $.FroalaEditor.DefineIcon(iconName, { NAME: 'plus' });

            // Define a global dropdown button for the Froala WYSIWYG HTML editor.
            $.FroalaEditor.RegisterCommand(commandName, {
                title: 'レイアウト',
                type: 'dropdown',
                icon: iconName,

                options: {},

                undo: true,
                focus: true,
                refreshAfterCallback: true,

                callback: function (cmd, val, params) {
                    var editorInstance = this;
                    editorInstance.html.insert(ms[val].value);
                },

                refreshOnShow: function ($btn, $dropdown) {
                    var editorInstance = this,
                            list = $dropdown.find('ul.fr-dropdown-list'),
                            listItems = '',
                            placeholders = $contents;
                    // access custom function added to froalaOptions on instance

                    $.each(placeholders, function (i, placeholder) {
                        listItems += buildListItem(placeholder.name, placeholder.value);
                    });

                    list.empty().append(listItems);

                    if (!editorInstance.selection.inEditor()) {
                        // Move cursor position to end.
                        editorInstance.selection.setAtEnd(editorInstance.$el.get(0));
                        editorInstance.selection.restore();
                    }
                }
            });

            var selector = /*[[${selector}]]*/ '#';
            $(selector).froalaEditor({
                toolbarButtons: ['paragraphFormat', 'placeholders', 'bold', 'underline', 'formatUL', 'color', 'align', 'quote', 'insertLink', 'insertImage', 'insertFile', 'insertTable', 'undo', 'redo', 'html', 'fullscreen'],
                heightMin: 300,
                imageDefaultWidth: 0,
                imageDefaultAlign: 'left',
                imageUploadURL: /*[[@{__$ADMIN_PATH__/media/create.json}]]*/ '#',
                imageManagerLoadURL: /*[[@{__$ADMIN_PATH__/media/index.json}]]*/ '#',
                fileUploadURL: /*[[@{__$ADMIN_PATH__/media/create.json}]]*/ '#'
            });
        });
        /*]]>*/
    </script>
</froala>
