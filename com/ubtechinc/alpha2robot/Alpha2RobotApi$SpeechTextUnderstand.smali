.class Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$SpeechTextUnderstand;
.super Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaTextUnderstandListener$Stub;
.source "Alpha2RobotApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeechTextUnderstand"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;


# direct methods
.method private constructor <init>(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)V
    .locals 0

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$SpeechTextUnderstand;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-direct {p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaTextUnderstandListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;
    .param p2, "x1"    # Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$1;

    .prologue
    .line 1027
    invoke-direct {p0, p1}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$SpeechTextUnderstand;-><init>(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)V

    return-void
.end method


# virtual methods
.method public onAlpha2UnderStandError(I)V
    .locals 1
    .param p1, "arg0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$SpeechTextUnderstand;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$500(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotTextUnderstandListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotTextUnderstandListener;->onAlpha2UnderStandError(I)V

    .line 1034
    return-void
.end method

.method public onAlpha2UnderStandTextResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$SpeechTextUnderstand;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$500(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotTextUnderstandListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2RobotTextUnderstandListener;->onAlpha2UnderStandTextResult(Ljava/lang/String;)V

    .line 1041
    return-void
.end method
