.class Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$EnglishOfflineUnderstand;
.super Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishOfflineUnderstandListener$Stub;
.source "Alpha2RobotApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnglishOfflineUnderstand"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;


# direct methods
.method private constructor <init>(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)V
    .locals 0

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$EnglishOfflineUnderstand;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-direct {p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishOfflineUnderstandListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlpha2EnglishOfflineUnderstandResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$EnglishOfflineUnderstand;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$700(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$EnglishOfflineUnderstand;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$800(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2EnglishOfflineUnderstandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$EnglishOfflineUnderstand;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$800(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2EnglishOfflineUnderstandListener;

    move-result-object v0

    .line 1068
    invoke-interface {v0, p1}, Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2EnglishOfflineUnderstandListener;->onAlpha2EnglishOfflineUnderStandResult(Ljava/lang/String;)V

    .line 1070
    :cond_0
    return-void
.end method
