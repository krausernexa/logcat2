.class final enum Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;
.super Ljava/lang/Enum;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

.field public static final enum BUSY:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

.field public static final enum IDLE:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;->IDLE:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    new-instance v0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    const-string v1, "BUSY"

    invoke-direct {v0, v1, v3}, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;->BUSY:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    sget-object v1, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;->IDLE:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;->BUSY:Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;->$VALUES:[Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    return-object v0
.end method

.method public static values()[Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;->$VALUES:[Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    invoke-virtual {v0}, [Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubtechinc/alphaenglishchat/camera/CameraPreview$State;

    return-object v0
.end method
