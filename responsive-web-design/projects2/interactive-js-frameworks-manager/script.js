$(document).ready(function () {
    let table = $('#frameworks_table').DataTable({
        select: true
    });

    $('#addRowBtn').on('click', function () {
        // Get input values
        let framework = $('#framework').val();
        let link = $('#link').val();
        let description = $('#description').val();

        table.row.add([framework, `<a href="${link}" target="_blank">${link}</a>`, description]).draw();

        $('#framework').val('');
        $('#link').val('');
        $('#description').val('');

        toastr.success('Row added successfully');
    });

    $('#removeRowBtn').on('click', function () {
        let selectedRow = table.row('.selected');
        if (selectedRow.any()) {
            selectedRow.remove().draw();
            toastr.success('Row removed successfully');
        } else {
            toastr.error('No row selected');
        }
    });

    $('#clearBtn').on('click', function () {
        $('#framework').val('');
        $('#link').val('');
        $('#description').val('');
        toastr.info('Input fields cleared');
    });

    $('#frameworks_table tbody').on('click', 'tr', function () {
        $(this).toggleClass('selected');
    });
});

toastr.options = {
    "closeButton": false,
    "debug": false,
    "newestOnTop": false,
    "progressBar": false,
    "positionClass": "toast-top-full-width",
    "preventDuplicates": false,
    "onclick": null,
    "showDuration":
