.class Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$SpeechClientImp;
.super Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener$Stub;
.source "Alpha2RobotApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeechClientImp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;


# direct methods
.method private constructor <init>(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)V
    .locals 0

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$SpeechClientImp;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-direct {p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;
    .param p2, "x1"    # Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$1;

    .prologue
    .line 1007
    invoke-direct {p0, p1}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$SpeechClientImp;-><init>(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)V

    return-void
.end method


# virtual methods
.method public onServerCallBack(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1012
    const-string v0, "zdy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$SpeechClientImp;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$400(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotClientListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotClientListener;->onServerCallBack(Ljava/lang/String;)V

    .line 1014
    return-void
.end method

.method public onServerPlayEnd(Z)V
    .locals 2
    .param p1, "isEnd"    # Z

    .prologue
    .line 1019
    const-string v0, "SpeechManager"

    const-string v1, "robotAPI onServerPlayEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$SpeechClientImp;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$400(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotClientListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotClientListener;->onServerPlayEnd(Z)V

    .line 1022
    return-void
.end method
