.class Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$2;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


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
    .line 210
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$2;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 215
    if-eqz p1, :cond_1

    .line 216
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$2;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->access$000(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "autoFocusCallback: success..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$2;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->access$100(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$2;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->access$000(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "autoFocusCallback: fail..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$2;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->access$200(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$2;->this$0:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;->access$100(Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;)V

    goto :goto_0
.end method
