.class Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$ActionClientListener;
.super Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient$Stub;
.source "Alpha2RobotApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionClientListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;


# direct methods
.method private constructor <init>(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)V
    .locals 0

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$ActionClientListener;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-direct {p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;
    .param p2, "x1"    # Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$1;

    .prologue
    .line 1073
    invoke-direct {p0, p1}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$ActionClientListener;-><init>(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)V

    return-void
.end method


# virtual methods
.method public onActionStop(Ljava/lang/String;)V
    .locals 2
    .param p1, "strActionFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$ActionClientListener;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$900(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Lcom/ubtechinc/alpha2serverlib/interfaces/AlphaActionClientListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1079
    const-string v0, ""

    const-string v1, "!!!!!!!!!! mClientListener 3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$ActionClientListener;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$900(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Lcom/ubtechinc/alpha2serverlib/interfaces/AlphaActionClientListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ubtechinc/alpha2serverlib/interfaces/AlphaActionClientListener;->onActionStop(Ljava/lang/String;)V

    .line 1082
    :cond_0
    return-void
.end method
