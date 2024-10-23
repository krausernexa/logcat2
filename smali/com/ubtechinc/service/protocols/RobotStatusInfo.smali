.class public Lcom/ubtechinc/service/protocols/RobotStatusInfo;
.super Ljava/lang/Object;
.source "RobotStatusInfo.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private speechASREngine:Ljava/lang/String;

.field private speechEngine:Ljava/lang/String;

.field private speechEngineDetail:Ljava/lang/String;

.field private speechEngineState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/RobotStatusInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeechASREngine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/RobotStatusInfo;->speechASREngine:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeechEngine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/RobotStatusInfo;->speechEngine:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeechEngineDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/RobotStatusInfo;->speechEngineDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeechEngineState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ubtechinc/service/protocols/RobotStatusInfo;->speechEngineState:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/RobotStatusInfo;->appName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setSpeechASREngine(Ljava/lang/String;)V
    .locals 0
    .param p1, "speechASREngine"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/RobotStatusInfo;->speechASREngine:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setSpeechEngine(Ljava/lang/String;)V
    .locals 0
    .param p1, "speechEngine"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/RobotStatusInfo;->speechEngine:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setSpeechEngineDetail(Ljava/lang/String;)V
    .locals 0
    .param p1, "speechEngineDetail"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/RobotStatusInfo;->speechEngineDetail:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setSpeechEngineState(Ljava/lang/String;)V
    .locals 0
    .param p1, "speechEngineState"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ubtechinc/service/protocols/RobotStatusInfo;->speechEngineState:Ljava/lang/String;

    .line 48
    return-void
.end method
