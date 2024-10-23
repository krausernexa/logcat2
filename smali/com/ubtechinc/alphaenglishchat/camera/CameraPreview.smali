.class public Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$SavePictureTask;,
        Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;
    }
.end annotation


# static fields
.field public static final MEDIA_TYPE_IMAGE:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private cameraActivity:Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;

.field private isPreview:Z

.field private isSupportAutoFocus:Ljava/lang/Boolean;

.field private mCamera:Landroid/hardware/Camera;

.field private mContext:Landroid/content/Context;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mPicture:Landroid/hardware/Camera$PictureCallback;

.field private maxPictureSize:I

.field private pictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private savaPath:Ljava/lang/String;

.field setFixPictureHeight:I

.field setFixPictureWidth:I

.field private shutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private state:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;->IDLE:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->state:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    .line 67
    const-string v0, "CameraPreview"

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->TAG:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 83
    iput-boolean v1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->isPreview:Z

    .line 87
    const v0, 0x4c4b40

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->maxPictureSize:I

    .line 91
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->isSupportAutoFocus:Ljava/lang/Boolean;

    .line 100
    iput v1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->setFixPictureWidth:I

    .line 104
    iput v1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->setFixPictureHeight:I

    .line 210
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$2;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$2;-><init>(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 283
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$3;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$3;-><init>(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 290
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$4;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$4;-><init>(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->pictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 298
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$5;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$5;-><init>(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mPicture:Landroid/hardware/Camera$PictureCallback;

    .line 51
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->init(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)V
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->takePhoto()V

    return-void
.end method

.method static synthetic access$200(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->isSupportAutoFocus:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$402(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;)Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;
    .param p1, "x1"    # Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->state:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->savaPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->savaPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->cameraActivity:Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;

    return-object v0
.end method

.method private getDisplayOritation(II)I
    .locals 4
    .param p1, "degrees"    # I
    .param p2, "cameraId"    # I

    .prologue
    .line 271
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 272
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 274
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 275
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p1

    rem-int/lit16 v1, v2, 0x168

    .line 276
    .local v1, "result":I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 280
    :goto_0
    return v1

    .line 278
    .end local v1    # "result":I
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1    # "result":I
    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.autofocus"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->isSupportAutoFocus:Ljava/lang/Boolean;

    .line 59
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 65
    return-void
.end method

.method private setCameraParms()V
    .locals 8

    .prologue
    .line 149
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 152
    .local v5, "myParam":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v4

    .line 153
    .local v4, "mSupportedsizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 154
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 155
    .local v3, "itos":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 156
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 157
    .local v0, "curSize":Landroid/hardware/Camera$Size;
    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int v1, v6, v7

    .line 158
    .local v1, "curSupporSize":I
    iget v6, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->setFixPictureWidth:I

    iget v7, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->setFixPictureHeight:I

    mul-int v2, v6, v7

    .line 159
    .local v2, "fixPictrueSize":I
    if-le v1, v2, :cond_0

    iget v6, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->maxPictureSize:I

    if-gt v1, v6, :cond_0

    .line 161
    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    iput v6, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->setFixPictureWidth:I

    .line 162
    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    iput v6, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->setFixPictureHeight:I

    goto :goto_0

    .line 166
    .end local v0    # "curSize":Landroid/hardware/Camera$Size;
    .end local v1    # "curSupporSize":I
    .end local v2    # "fixPictrueSize":I
    .end local v3    # "itos":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_1
    iget v6, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->setFixPictureWidth:I

    iget v7, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->setFixPictureHeight:I

    invoke-virtual {v5, v6, v7}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 167
    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 168
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    const/16 v7, 0xb4

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 170
    iget-object v6, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 171
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v6

    if-lez v6, :cond_2

    .line 174
    :cond_2
    return-void
.end method

.method private takePhoto()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xb4

    .line 231
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, "orientation":I
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 248
    .local v0, "cameraParameter":Landroid/hardware/Camera$Parameters;
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "5.1.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 250
    const-string v2, "rotation"

    invoke-virtual {v0, v2, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 256
    :goto_0
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 257
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->pictureCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v5, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mPicture:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 259
    .end local v0    # "cameraParameter":Landroid/hardware/Camera$Parameters;
    .end local v1    # "orientation":I
    :cond_0
    return-void

    .line 252
    .restart local v0    # "cameraParameter":Landroid/hardware/Camera$Parameters;
    .restart local v1    # "orientation":I
    :cond_1
    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 253
    const-string v2, "rotation"

    invoke-virtual {v0, v2, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 254
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->reAutoFocus()V

    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public reAutoFocus()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->isSupportAutoFocus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$1;

    invoke-direct {v1, p0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$1;-><init>(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 196
    :cond_0
    return-void
.end method

.method public setHandler(Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;)V
    .locals 0
    .param p1, "cameraActivity"    # Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->cameraActivity:Lcom/ubtechinc/alphaenglishchat/camera/CameraActivity;

    .line 349
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 135
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-nez v1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 139
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->setCameraParms()V

    .line 140
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 141
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 142
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->reAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error starting camera preview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ubtechinc/alphaenglishchat/camera/CameraCheck;->getCameraInstance(Landroid/content/Context;)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 115
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->isPreview:Z

    .line 124
    :cond_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 180
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 183
    :cond_0
    return-void
.end method

.method public takePicture()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->state:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    sget-object v1, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;->IDLE:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    if-eq v0, v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;->BUSY:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->state:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    .line 206
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->autoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0
.end method
