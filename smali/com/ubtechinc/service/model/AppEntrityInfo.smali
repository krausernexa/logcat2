.class public Lcom/ubtechinc/service/model/AppEntrityInfo;
.super Ljava/lang/Object;
.source "AppEntrityInfo.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private appId:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field private downLoadState:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xb
    .end annotation
.end field

.field private icon:[B
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x7
    .end annotation
.end field

.field private isButtonEvent:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xa
    .end annotation
.end field

.field private isDownLoad:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x5
    .end annotation
.end field

.field private isSetting:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x8
    .end annotation
.end field

.field private isSystemApp:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x9
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x6
    .end annotation
.end field

.field private versionCode:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field private versionName:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->versionCode:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->versionName:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownLoadState()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->downLoadState:I

    return v0
.end method

.method public getIcon()[B
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->icon:[B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isButtonEvent()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->isButtonEvent:Z

    return v0
.end method

.method public isDownLoad()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->isDownLoad:Z

    return v0
.end method

.method public isSetting()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->isSetting:Z

    return v0
.end method

.method public isSystemApp()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->isSystemApp:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->appId:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setButtonEvent(Z)V
    .locals 0
    .param p1, "isButtonEvent"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->isButtonEvent:Z

    .line 67
    return-void
.end method

.method public setDownLoad(Z)V
    .locals 0
    .param p1, "isDownLoad"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->isDownLoad:Z

    .line 99
    return-void
.end method

.method public setDownLoadState(I)V
    .locals 0
    .param p1, "downLoadState"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->downLoadState:I

    .line 51
    return-void
.end method

.method public setIcon([B)V
    .locals 0
    .param p1, "icon"    # [B

    .prologue
    .line 82
    iput-object p1, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->icon:[B

    .line 83
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->name:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->packageName:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setSetting(Z)V
    .locals 0
    .param p1, "isSetting"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->isSetting:Z

    .line 75
    return-void
.end method

.method public setSystemApp(Z)V
    .locals 0
    .param p1, "isSystemApp"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->isSystemApp:Z

    .line 59
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->url:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->versionCode:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ubtechinc/service/model/AppEntrityInfo;->versionName:Ljava/lang/String;

    .line 123
    return-void
.end method
