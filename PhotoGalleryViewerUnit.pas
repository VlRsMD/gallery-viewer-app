unit PhotoGalleryViewerUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  System.IOUtils, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TPhotoGalleryViewer = class(TForm)
    pnlHeader: TPanel;
    headerLabel: TLabel;
    pnlFooter: TPanel;
    footerLabel: TLabel;
    pnlSidebar: TPanel;
    ScrollBox1: TScrollBox;
    pnlContent: TPanel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    procedure LoadThumbnails;
    procedure ThumbnailClick(Sender: TObject);
    procedure pnlHeaderClick(Sender: TObject);
  public
  end;

var
  PhotoGalleryViewer: TPhotoGalleryViewer;

implementation

{$R *.dfm}

procedure TPhotoGalleryViewer.pnlHeaderClick(Sender: TObject);
begin
  ShowMessage('Header clicked!');
end;

procedure TPhotoGalleryViewer.FormCreate(Sender: TObject);
begin
  LoadThumbnails;
end;

procedure TPhotoGalleryViewer.LoadThumbnails;
var
  i: Integer;
  img: TImage;
  imgPaths: TArray<string>;
  thumbHeight: Integer;
  msg: string;
begin
  imgPaths := TDirectory.GetFiles(
    'C:\Users\User\Downloads\Delphi training\Testing photos',
    '*.jp*',
    TSearchOption.soTopDirectoryOnly
  );

  thumbHeight := 100;

  for i := 0 to High(imgPaths) do
  begin
    img := TImage.Create(Self);
    img.Parent := ScrollBox1;
    img.Align := alTop;
    img.Height := thumbHeight;
    img.Proportional := True;
    img.Stretch := True;

    try
      img.Picture.LoadFromFile(imgPaths[i]);
    except
      on E: Exception do
        ShowMessage('Failed to load image: ' + imgPaths[i] + sLineBreak + E.Message);
    end;

    img.Tag := i;
    img.Hint := imgPaths[i];
    img.ShowHint := True;
    img.OnClick := ThumbnailClick;
  end;
end;

procedure TPhotoGalleryViewer.ThumbnailClick(Sender: TObject);
var
  clickedImg: TImage;
begin
  clickedImg := Sender as TImage;
  Image1.Picture.LoadFromFile(clickedImg.Hint);
end;

end.

