import ClassicEditor from '@ckeditor/ckeditor5-build-classic';
import CustomUploadAdapterPlugin from './upload_adapter';

document.addEventListener("DOMContentLoaded", function() {
    const editorElement = document.querySelector("#editor");
    if (editorElement) {
        ClassicEditor.create(editorElement, {
            extraPlugins: [CustomUploadAdapterPlugin]
        })
        .catch(error => console.error(error));
    }
});
