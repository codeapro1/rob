unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ExtDlgs, XPMan,Math, Menus, CPort, Buttons;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    memo1: TMemo;
    PaintBox1: TPaintBox;
    XPManifest1: TXPManifest;
    Label5: TLabel;
    Button3: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    OpenDialog1: TOpenDialog;
    Timer1: TTimer;
    Edit2: TEdit;
    ComPort1: TComPort;
    Button4: TButton;
    BitBtn1: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    ScrollBar3: TScrollBar;
    Timer3: TTimer;
    N5: TMenuItem;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ScrollBar1Scroll(Sender: TObject; ScrollCode: TScrollCode;
      var ScrollPos: Integer);
    procedure ScrollBar2Scroll(Sender: TObject; ScrollCode: TScrollCode;
      var ScrollPos: Integer);
    procedure ScrollBar3Scroll(Sender: TObject; ScrollCode: TScrollCode;
      var ScrollPos: Integer);
    procedure Timer3Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

  var x,y,x2,y2,i,g:integer;
    y1,x1:integer;
    l1,l2:integer;
    d,q1,q2:real;
    pen,dx,dy,s1,s2,x4,y4,o,j,v,obmen   :integer;
    k,q3,q4:integer;
    FBuf: array [1..12] of Byte ;
    m1: array [1..180] of integer;


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
  label met1;
begin


 timer3.Enabled:=false;
l1:=206;
l2:=220;
x1:=20;
y1:=420;
g:=3;
 for y:= 0 to image1.Picture.Height do
  for x:=0 to image1.Picture.Width do
  begin
    if image1.Canvas.Pixels[x, y] = clblack then
   begin



       image1.Canvas.Pixels[x,y]:=clred;
         paintbox1.Canvas.Pixels[x,y]:=clblack;
 x2:=x;
 y2:=y;

  x4:=x1;
  y4:=y1;
  dx:=(abs(x2-x1));
  dy:=(abs(y2-y1));
  if (x2-x1)<=0 then s1:=-1 else s1:=1;
  if (y2-y1)<=0 then s2:=-1 else s2:=1;
  if dy>dx then
  begin
    v:=dx;
    dx:=dy;
    dy:=v;
    obmen:=1;
  end
  else obmen:=0;
  o:=2*dy-dx;
  for j := 1 to dx do
  begin

     d:=sqrt(sqr(x4)+sqr(y4));
     q1:=arccos(x4/d)+arccos((sqr(l1)-sqr(l2)+sqr(d))/(2*l1*d));
  q2:=pi-arccos((sqr(l1)+sqr(l2)-sqr(d))/(2*l1*l2));
 q1:=q1*180/pi;
  q2:=q2*180/pi+20;
    q1:=round(q1);
  q2:=round(q2);



         q3:=trunc(q1);
   q4:=trunc(q2);
    q3:=m1[q3];
   q4:=m1[q4];
   if g=0 then
    begin


          comport1.Open;
   i:=1;
   FBuf[1]:=250;

       ComPort1.Write(FBuf[i],1);

sleep(1);

    FBuf[1]:=q3;

       ComPort1.Write(FBuf[i],1);

sleep(1);
FBuf[1]:=q4;

       ComPort1.Write(FBuf[i],1);

sleep(1);
FBuf[1]:=60;

       ComPort1.Write(FBuf[i],1);

sleep(1);

   comport1.Close;
   g:=3;
  end;
    g:=g-1;
    while o>=0 do
    begin
      if obmen=1 then
      x4:=x4+s1
      else
        y4:=y4+s2;
      o:=o-2*dx;
    end;
    if obmen=1 then y4:=y4+s2
    else x4:=x4+s1;
    o:=o+2*dy;
  end;



 d:=sqrt(sqr(x2)+sqr(y2));
     q1:=arccos(x2/d)+arccos((sqr(l1)-sqr(l2)+sqr(d))/(2*l1*d));
  q2:=pi-arccos((sqr(l1)+sqr(l2)-sqr(d))/(2*l1*l2));
 q1:=q1*180/pi;
  q2:=q2*180/pi+20;
    q1:=round(q1);
  q2:=round(q2);
   q3:=trunc(q1);
   q4:=trunc(q2);
   q3:=m1[q3];
   q4:=m1[q4];
             memo1.Lines.Add(floattostr(q1)+'    '+floattostr(q2));
           application.ProcessMessages;
          image1.Canvas.Pixels[x2,y2]:=clred;
          comport1.Open;
   i:=1;
   FBuf[1]:=250;

       ComPort1.Write(FBuf[i],1);

sleep(5);

    FBuf[1]:=q3;

       ComPort1.Write(FBuf[i],1);

sleep(5);
FBuf[1]:=q4;

       ComPort1.Write(FBuf[i],1);

sleep(500);
FBuf[1]:=70;

       ComPort1.Write(FBuf[i],1);

sleep(5);

   comport1.Close;

         sleep(10);



 sleep(10);
 met1: while image1.Canvas.Pixels[x2+1, y2] = clblack do
       begin
         paintbox1.Canvas.Pixels[x2+1,y2]:=clblack;
           d:=sqrt(sqr(x2+1)+sqr(y2));
     q1:=arccos((x2+1)/d)+arccos((sqr(l1)-sqr(l2)+sqr(d))/(2*l1*d));
  q2:=pi-arccos((sqr(l1)+sqr(l2)-sqr(d))/(2*l1*l2));
 q1:=q1*180/pi;
  q2:=q2*180/pi+20;
    q1:=round(q1);
  q2:=round(q2);



             memo1.Lines.Add(floattostr(q1)+'    '+floattostr(q2));
           application.ProcessMessages;
          image1.Canvas.Pixels[x2+1,y2]:=clred;
         x2:=x2+1;
         q3:=trunc(q1);
   q4:=trunc(q2);
   q3:=m1[q3];
   q4:=m1[q4];
          comport1.Open;
   i:=1;
   FBuf[1]:=250;

       ComPort1.Write(FBuf[i],1);

sleep(5);

    FBuf[1]:=q3;

       ComPort1.Write(FBuf[i],1);

sleep(5);
FBuf[1]:=q4;

       ComPort1.Write(FBuf[i],1);

sleep(5);
FBuf[1]:=70;

       ComPort1.Write(FBuf[i],1);

sleep(5);

   comport1.Close;

         sleep(10);

         goto met1;
        end;
     while image1.Canvas.Pixels[x2+1, y2+1] = clblack do
       begin
         paintbox1.Canvas.Pixels[x2+1,y2+1]:=clblack;

          d:=sqrt(sqr(x2+1)+sqr(y2+1));
     q1:=arccos((x2+1)/d)+arccos((sqr(l1)-sqr(l2)+sqr(d))/(2*l1*d));
  q2:=pi-arccos((sqr(l1)+sqr(l2)-sqr(d))/(2*l1*l2));
 q1:=q1*180/pi;
  q2:=q2*180/pi+20;
    q1:=round(q1);
  q2:=round(q2);




          memo1.Lines.Add(floattostr(q1)+'    '+floattostr(q2));
          application.ProcessMessages;
         x2:=x2+1;
         y2:=y2+1;
         image1.Canvas.Pixels[x2,y2]:=clred;
         q3:=trunc(q1);
   q4:=trunc(q2);
   q3:=m1[q3];
   q4:=m1[q4];
          comport1.Open;
   i:=1;
   FBuf[1]:=250;

       ComPort1.Write(FBuf[i],1);

sleep(5);

    FBuf[1]:=q3;

       ComPort1.Write(FBuf[i],1);

sleep(5);
FBuf[1]:=q4;

       ComPort1.Write(FBuf[i],1);

sleep(5);
FBuf[1]:=70;

       ComPort1.Write(FBuf[i],1);

sleep(5);

   comport1.Close;
         sleep(10);
          goto met1;
        end;
     while image1.Canvas.Pixels[x2, y2+1] = clblack do
       begin
         paintbox1.Canvas.Pixels[x2,y2+1]:=clblack;

         d:=sqrt(sqr(x2)+sqr(y2+1));
     q1:=arccos(x2/d)+arccos((sqr(l1)-sqr(l2)+sqr(d))/(2*l1*d));
  q2:=pi-arccos((sqr(l1)+sqr(l2)-sqr(d))/(2*l1*l2));
 q1:=q1*180/pi;
  q2:=q2*180/pi+20;
    q1:=round(q1);
  q2:=round(q2);


         memo1.Lines.Add(floattostr(q1)+'    '+floattostr(q2));
          application.ProcessMessages;
         y2:=y2+1;
          image1.Canvas.Pixels[x2,y2]:=clred;
                q3:=trunc(q1);
   q4:=trunc(q2);
   q3:=m1[q3];
   q4:=m1[q4];
          comport1.Open;
   i:=1;
   FBuf[1]:=250;

       ComPort1.Write(FBuf[i],1);

sleep(5);

    FBuf[1]:=q3;

       ComPort1.Write(FBuf[i],1);

sleep(5);
FBuf[1]:=q4;

       ComPort1.Write(FBuf[i],1);

sleep(5);
FBuf[1]:=70;

       ComPort1.Write(FBuf[i],1);

sleep(5);

   comport1.Close;
          sleep(10);
         goto met1;
        end;
   while image1.Canvas.Pixels[x2-1, y2+1] = clblack do
       begin
         paintbox1.Canvas.Pixels[x2-1,y2+1]:=clblack;


          d:=sqrt(sqr(x2-1)+sqr(y2+1));
     q1:=arccos((x2-1)/d)+arccos((sqr(l1)-sqr(l2)+sqr(d))/(2*l1*d));
  q2:=pi-arccos((sqr(l1)+sqr(l2)-sqr(d))/(2*l1*l2));
 q1:=q1*180/pi;
 q2:=q2*180/pi+20;
    q1:=round(q1);
  q2:=round(q2);



         x2:=x2-1;
         y2:=y2+1;
         memo1.Lines.Add(floattostr(q1)+'    '+floattostr(q2));
          application.ProcessMessages;
          image1.Canvas.Pixels[x2,y2]:=clred;
           q3:=trunc(q1);
   q4:=trunc(q2);
   q3:=m1[q3];
   q4:=m1[q4];
          comport1.Open;
   i:=1;
   FBuf[1]:=250;

       ComPort1.Write(FBuf[i],1);

sleep(5);

    FBuf[1]:=q3;

       ComPort1.Write(FBuf[i],1);

sleep(5);
FBuf[1]:=q4;

       ComPort1.Write(FBuf[i],1);

sleep(5);
FBuf[1]:=70;

       ComPort1.Write(FBuf[i],1);

sleep(5);

   comport1.Close;
          sleep(10);
          goto met1;
        end;
  while image1.Canvas.Pixels[x2-1, y2] = clblack do
       begin
         paintbox1.Canvas.Pixels[x2-1,y2]:=clblack;

         d:=sqrt(sqr(x2-1)+sqr(y2));
     q1:=arccos((x2-1)/d)+arccos((sqr(l1)-sqr(l2)+sqr(d))/(2*l1*d));
  q2:=pi-arccos((sqr(l1)+sqr(l2)-sqr(d))/(2*l1*l2));
 q1:=q1*180/pi;
  q2:=q2*180/pi+20;
    q1:=round(q1);
  q2:=round(q2);



         x2:=x2-1;
         memo1.Lines.Add(floattostr(q1)+'    '+floattostr(q2));
           application.ProcessMessages;
           image1.Canvas.Pixels[x2,y2]:=clred;
                q3:=trunc(q1);
   q4:=trunc(q2);
   q3:=m1[q3];
   q4:=m1[q4];
          comport1.Open;
   i:=1;
   FBuf[1]:=250;

       ComPort1.Write(FBuf[i],1);

sleep(5);

    FBuf[1]:=q3;

       ComPort1.Write(FBuf[i],1);

sleep(5);
FBuf[1]:=q4;

       ComPort1.Write(FBuf[i],1);

sleep(5);
FBuf[1]:=70;

       ComPort1.Write(FBuf[i],1);

sleep(5);

   comport1.Close;
           sleep(10);
          goto met1;
        end;
     while image1.Canvas.Pixels[x2-1, y2-1] = clblack do
       begin
         paintbox1.Canvas.Pixels[x2-1,y2-1]:=clblack;

         d:=sqrt(sqr(x2-1)+sqr(y2-1));
     q1:=arccos((x2-1)/d)+arccos((sqr(l1)-sqr(l2)+sqr(d))/(2*l1*d));
  q2:=pi-arccos((sqr(l1)+sqr(l2)-sqr(d))/(2*l1*l2));
 q1:=q1*180/pi;
  q2:=q2*180/pi+20;
    q1:=round(q1);
  q2:=round(q2);




         x2:=x2-1;
         y2:=y2-1;
         memo1.Lines.Add(floattostr(q1)+'    '+floattostr(q2));
           application.ProcessMessages;
          image1.Canvas.Pixels[x2,y2]:=clred;
               q3:=trunc(q1);
   q4:=trunc(q2);
   q3:=m1[q3];
   q4:=m1[q4];
          comport1.Open;
   i:=1;
   FBuf[1]:=250;

       ComPort1.Write(FBuf[i],1);

sleep(5);

    FBuf[1]:=q3;

       ComPort1.Write(FBuf[i],1);

sleep(5);
FBuf[1]:=q4;

       ComPort1.Write(FBuf[i],1);

sleep(5);
FBuf[1]:=70;

       ComPort1.Write(FBuf[i],1);

sleep(5);

   comport1.Close;
          sleep(10);
           goto met1;
        end;
     while image1.Canvas.Pixels[x2, y2-1] = clblack do
       begin
         paintbox1.Canvas.Pixels[x2,y2-1]:=clblack;


         d:=sqrt(sqr(x2)+sqr(y2-1));
     q1:=arccos(x2/d)+arccos((sqr(l1)-sqr(l2)+sqr(d))/(2*l1*d));
  q2:=pi-arccos((sqr(l1)+sqr(l2)-sqr(d))/(2*l1*l2));
 q1:=q1*180/pi;
 q2:=q2*180/pi+20;
    q1:=round(q1);
  q2:=round(q2);



         y2:=y2-1;
         memo1.Lines.Add(floattostr(q1)+'    '+floattostr(q2));
           application.ProcessMessages;
           image1.Canvas.Pixels[x2,y2]:=clred;
                q3:=trunc(q1);
   q4:=trunc(q2);
    q3:=m1[q3];
   q4:=m1[q4];
          comport1.Open;
   i:=1;
   FBuf[1]:=250;

       ComPort1.Write(FBuf[i],1);

sleep(5);

    FBuf[1]:=q3;

       ComPort1.Write(FBuf[i],1);

sleep(5);
FBuf[1]:=q4;

       ComPort1.Write(FBuf[i],1);

sleep(5);
FBuf[1]:=70;

       ComPort1.Write(FBuf[i],1);

sleep(5);

   comport1.Close;
           sleep(10);
          goto met1;
        end;
     while image1.Canvas.Pixels[x2+1, y2-1] = clblack do
       begin
         paintbox1.Canvas.Pixels[x2+1,y2-1]:=clblack;


         d:=sqrt(sqr(x2+1)+sqr(y2-1));
     q1:=arccos((x2+1)/d)+arccos((sqr(l1)-sqr(l2)+sqr(d))/(2*l1*d));
  q2:=pi-arccos((sqr(l1)+sqr(l2)-sqr(d))/(2*l1*l2));
 q1:=q1*180/pi;
  q2:=q2*180/pi+20;
    q1:=round(q1);
  q2:=round(q2);







         x2:=x2+1;
         y2:=y2-1;
         memo1.Lines.Add(floattostr(q1)+'    '+floattostr(q2));
          application.ProcessMessages;
          image1.Canvas.Pixels[x2,y2]:=clred;
               q3:=trunc(q1);
   q4:=trunc(q2);
   q3:=m1[q3];
   q4:=m1[q4];
          comport1.Open;
   i:=1;
   FBuf[1]:=250;

       ComPort1.Write(FBuf[i],1);

sleep(5);

    FBuf[1]:=q3;

       ComPort1.Write(FBuf[i],1);

sleep(5);
FBuf[1]:=q4;

       ComPort1.Write(FBuf[i],1);

sleep(5);
FBuf[1]:=70;

       ComPort1.Write(FBuf[i],1);

sleep(5);

   comport1.Close;
          sleep(10);
           goto met1;
        end;
             x1:=x2;
             y1:=y2;
             q3:=trunc(q1);
   q4:=trunc(q2);
   q3:=m1[q3];
   q4:=m1[q4];
          comport1.Open;
   i:=1;
   FBuf[1]:=250;

       ComPort1.Write(FBuf[i],1);

sleep(5);

    FBuf[1]:=q3;

       ComPort1.Write(FBuf[i],1);

sleep(5);
FBuf[1]:=q4;

       ComPort1.Write(FBuf[i],1);

sleep(5);
FBuf[1]:=60;

       ComPort1.Write(FBuf[i],1);

sleep(5);

   comport1.Close;











end;
end;
  
  x2:=20;
 y2:=420;
  g:=10;
  x4:=x1;
  y4:=y1;
  dx:=(abs(x2-x1));
  dy:=(abs(y2-y1));
  if (x2-x1)<=0 then s1:=-1 else s1:=1;
  if (y2-y1)<=0 then s2:=-1 else s2:=1;
  if dy>dx then
  begin
    v:=dx;
    dx:=dy;
    dy:=v;
    obmen:=1;
  end
  else obmen:=0;
  o:=2*dy-dx;
  for j := 1 to dx do
  begin

     d:=sqrt(sqr(x4)+sqr(y4));
     q1:=arccos(x4/d)+arccos((sqr(l1)-sqr(l2)+sqr(d))/(2*l1*d));
  q2:=pi-arccos((sqr(l1)+sqr(l2)-sqr(d))/(2*l1*l2));
 q1:=q1*180/pi;
  q2:=q2*180/pi+20;
    q1:=round(q1);
  q2:=round(q2);



         q3:=trunc(q1);
   q4:=trunc(q2);
    q3:=m1[q3];
   q4:=m1[q4];
   if g=0 then
    begin


          comport1.Open;
   i:=1;
   FBuf[1]:=250;

       ComPort1.Write(FBuf[i],1);

sleep(1);

    FBuf[1]:=q3;

       ComPort1.Write(FBuf[i],1);

sleep(1);
FBuf[1]:=q4;

       ComPort1.Write(FBuf[i],1);

sleep(1);
FBuf[1]:=60;

       ComPort1.Write(FBuf[i],1);

sleep(1);

   comport1.Close;
   g:=10;
  end;
    g:=g-1;
    while o>=0 do
    begin
      if obmen=1 then
      x4:=x4+s1
      else
        y4:=y4+s2;
      o:=o-2*dx;
    end;
    if obmen=1 then y4:=y4+s2
    else x4:=x4+s1;
    o:=o+2*dy;
  end;
end;
procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

label3.Caption:=inttostr(x);
label4.Caption:=inttostr(y);
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 label3.Caption:=inttostr(x);
label4.Caption:=inttostr(y);
end;

procedure TForm1.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  label3.Caption:=inttostr(x);
label4.Caption:=inttostr(y);
end;

procedure TForm1.N2Click(Sender: TObject);
begin
button3.Click;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
 if opendialog1.Execute then
begin
 image1.Picture.LoadFromFile(opendialog1.FileName);
 label5.Caption:=opendialog1.FileName;
end;
timer3.Enabled:=true;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
form1.Close;
end;

procedure TForm1.Timer1Timer(Sender: TObject);

begin
edit2.Text:=inttostr(memo1.Lines.Count-1);
label9.Caption:=inttostr(scrollbar1.Position);
label10.Caption:=inttostr(scrollbar2.Position);
label11.Caption:=inttostr(scrollbar3.Position);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
ComPort1.ShowSetupDialog;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 m1[1]:=1;
m1[2]:=2;
m1[3]:=2;
m1[4]:=3;
m1[5]:=4;
m1[6]:=5;
m1[7]:=6;
m1[8]:=7;
m1[9]:=8;
m1[10]:=9;
m1[11]:=10;
m1[12]:=11;
m1[13]:=12;
m1[14]:=12;
m1[15]:=13;
m1[16]:=14;
m1[17]:=15;
m1[18]:=15;
m1[19]:=16;
m1[20]:=17;
m1[21]:=18;
m1[22]:=19;
m1[23]:=20;
m1[24]:=21;
m1[25]:=22;
m1[26]:=23;
m1[27]:=24;
m1[28]:=25;
m1[29]:=26;
m1[30]:=27;
m1[31]:=28;
m1[32]:=28;
m1[33]:=29;
m1[34]:=30;
m1[35]:=31;
m1[36]:=32;
m1[37]:=33;
m1[38]:=34;
m1[39]:=35;
m1[40]:=36;
m1[41]:=37;
m1[42]:=38;
m1[43]:=39;
m1[44]:=40;
m1[45]:=41;
m1[46]:=41;
m1[47]:=42;
m1[48]:=43;
m1[49]:=44;
m1[50]:=45;
m1[51]:=46;
m1[52]:=47;
m1[53]:=48;
m1[54]:=49;
m1[55]:=50;
m1[56]:=51;
m1[57]:=52;
m1[58]:=53;
m1[59]:=54;
m1[60]:=55;
m1[61]:=56;
m1[62]:=57;
m1[63]:=58;
m1[64]:=59;
m1[65]:=60;
m1[66]:=61;
m1[67]:=62;
m1[68]:=63;
m1[69]:=64;
m1[70]:=65;
m1[71]:=66;
m1[72]:=67;
m1[73]:=68;
m1[74]:=69;
m1[75]:=70;
m1[76]:=71;
m1[77]:=72;
m1[78]:=73;
m1[79]:=74;
m1[80]:=75;
m1[81]:=75;
m1[82]:=76;
m1[83]:=77;
m1[84]:=78;
m1[85]:=79;
m1[86]:=80;
m1[87]:=81;
m1[88]:=82;
m1[89]:=83;
m1[90]:=84;
m1[91]:=85;
m1[92]:=86;
m1[93]:=87;
m1[94]:=88;
m1[95]:=89;
m1[96]:=91;
m1[97]:=92;
m1[98]:=93;
m1[99]:=94;
m1[100]:=95;
m1[101]:=96;
m1[102]:=97;
m1[103]:=98;
m1[104]:=99;
m1[105]:=100;
m1[106]:=101;
m1[107]:=102;
m1[108]:=103;
m1[109]:=104;
m1[110]:=105;
m1[111]:=106;
m1[112]:=107;
m1[113]:=108;
m1[114]:=109;
m1[115]:=110;
m1[116]:=112;
m1[117]:=113;
m1[118]:=114;
m1[119]:=115;
m1[120]:=116;
m1[121]:=117;
m1[122]:=118;
m1[123]:=119;
m1[124]:=121;
m1[125]:=122;
m1[126]:=123;
m1[127]:=125;
m1[128]:=126;
m1[129]:=127;
m1[130]:=128;
m1[131]:=129;
m1[132]:=130;
m1[133]:=131;
m1[134]:=132;
m1[135]:=133;
m1[136]:=134;
m1[137]:=135;
m1[138]:=136;
m1[139]:=137;
m1[140]:=138;
m1[141]:=140;
m1[142]:=141;
m1[143]:=142;
m1[144]:=143;
m1[145]:=144;
m1[146]:=145;
m1[147]:=146;
m1[148]:=147;
m1[149]:=148;
m1[150]:=149;
m1[151]:=150;
m1[152]:=151;
m1[153]:=152;
m1[154]:=153;
m1[155]:=154;
m1[156]:=156;
m1[157]:=157;
m1[158]:=158;
m1[159]:=159;
m1[160]:=160;
m1[161]:=161;
m1[162]:=162;
m1[163]:=163;
m1[164]:=164;
m1[165]:=165;
m1[166]:=166;
m1[167]:=167;
m1[168]:=168;
m1[169]:=169;
m1[170]:=170;
m1[171]:=171;
m1[172]:=172;
m1[173]:=173;
m1[174]:=174;
m1[175]:=175;
m1[176]:=176;
m1[177]:=177;
m1[178]:=178;
m1[179]:=179;
m1[180]:=180;
end;
 procedure TForm1.ScrollBar1Scroll(Sender: TObject; ScrollCode: TScrollCode;
  var ScrollPos: Integer);
begin
case scrollcode of
sctrack:image1.Picture.LoadFromFile(label5.Caption);
end;
end;
procedure TForm1.ScrollBar2Scroll(Sender: TObject; ScrollCode: TScrollCode;
  var ScrollPos: Integer);
begin
case scrollcode of
sctrack:image1.Picture.LoadFromFile(label5.Caption);
end;
 end;
procedure TForm1.ScrollBar3Scroll(Sender: TObject; ScrollCode: TScrollCode;
  var ScrollPos: Integer);
begin
case scrollcode of
sctrack:image1.Picture.LoadFromFile(label5.Caption);
end;
 end;
procedure TForm1.Timer3Timer(Sender: TObject);
 var xx,yy:integer;
  r,t,b:byte;
    color:integer;
begin
for x:= 0 to image1.Picture.Width do
  for y:=0 to image1.Picture.Height do

  begin
    Color := ColorToRGB(image1.Canvas.Pixels[x,y]);
  r     := Color;
  t     := Color shr 8;
  b     := Color shr 16 ;




if (r<scrollbar1.Position) and (t<scrollbar2.Position) and (b<scrollbar3.Position)  then
image1.Canvas.Pixels[x,y]:=clblack






 else
 begin
 image1.Canvas.Pixels[x,y]:=clwhite;



end;
 end;
end;


end.
