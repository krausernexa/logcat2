.class Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$EnglishUnderstand;
.super Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener$Stub;
.source "Alpha2RobotApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnglishUnderstand"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;


# direct methods
.method private constructor <init>(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)V
    .locals 0

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$EnglishUnderstand;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-direct {p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlpha2EnglishUnderstandResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$EnglishUnderstand;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$600(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2EnglishUnderstandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi$EnglishUnderstand;->this$0:Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    invoke-static {v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->access$600(Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;)Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2EnglishUnderstandListener;

    move-result-object v0

    .line 1054
    invoke-interface {v0, p1}, Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2EnglishUnderstandListener;->onAlpha2EnglishUnderStandResult(Ljava/lang/String;)V

    .line 1056
    :cond_0
    return-void
.end method
