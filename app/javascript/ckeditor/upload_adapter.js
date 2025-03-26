class UploadAdapter {
    constructor(loader) {
        this.loader = loader;
    }

    upload() {
        return this.loader.file.then(file => new Promise((resolve, reject) => {
            const data = new FormData();
            data.append('upload', file);

            fetch('/ckeditor/upload', {
                method: 'POST',
                body: data,
                headers: {
                    'X-CSRF-Token': document.querySelector("meta[name='csrf-token']").getAttribute("content")
                }
            })
            .then(response => response.json())
            .then(data => resolve({ default: data.url }))
            .catch(error => reject(error));
        }));
    }

    abort() {}
}

function CustomUploadAdapterPlugin(editor) {
    editor.plugins.get('FileRepository').createUploadAdapter = (loader) => {
        return new UploadAdapter(loader);
    };
}

export default CustomUploadAdapterPlugin;
