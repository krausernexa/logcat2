.class Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$1;
.super Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarInitListener$Stub;
.source "Alpha2RobotApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->speech_initGrammar(Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarInitListener;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    .prologue
    .line 840
    iput-object p1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$1;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-direct {p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarInitListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public speechGrammarInitCallback(Ljava/lang/String;I)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 845
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$1;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$300(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarInitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$1;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$300(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarInitListener;

    move-result-object v0

    .line 847
    invoke-interface {v0, p1, p2}, Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2SpeechGrammarInitListener;->speechGrammarInitCallback(Ljava/lang/String;I)V

    .line 849
    :cond_0
    return-void
.end method
