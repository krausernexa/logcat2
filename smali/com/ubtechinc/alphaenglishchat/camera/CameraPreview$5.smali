.class Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$5;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$5;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 302
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$SavePictureTask;

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$5;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    invoke-direct {v0, v1}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$SavePictureTask;-><init>(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)V

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$SavePictureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 303
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$5;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->access$300(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 304
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$5;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    sget-object v1, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;->IDLE:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    invoke-static {v0, v1}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->access$402(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;)Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    .line 307
    return-void
.end method
