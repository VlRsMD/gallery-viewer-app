program PhotoGalleryViewerProject;

uses
  Vcl.Forms,
  PhotoGalleryViewerUnit in 'PhotoGalleryViewerUnit.pas' {PhotoGalleryViewer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPhotoGalleryViewer, PhotoGalleryViewer);
  Application.Run;
end.
