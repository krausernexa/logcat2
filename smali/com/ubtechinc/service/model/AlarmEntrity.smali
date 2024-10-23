.class public Lcom/ubtechinc/service/model/AlarmEntrity;
.super Lcom/ubtechinc/service/model/base/BaseEntrity;
.source "AlarmEntrity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private acitonEndName:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x5
    .end annotation
.end field

.field private actionStartName:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation
.end field

.field private actionType:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x6
    .end annotation
.end field

.field private date:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xa
    .end annotation
.end field

.field private day:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x9
    .end annotation
.end field

.field private hh:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field private isUseAble:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field private mm:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private mo:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x8
    .end annotation
.end field

.field private repeat:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field private ss:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xb
    .end annotation
.end field

.field private yy:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x7
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ubtechinc/service/model/base/BaseEntrity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcitonEndName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->acitonEndName:Ljava/lang/String;

    return-object v0
.end method

.method public getActionStartName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->actionStartName:Ljava/lang/String;

    return-object v0
.end method

.method public getActionType()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->actionType:I

    return v0
.end method

.method public getDate()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->date:I

    return v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->day:I

    return v0
.end method

.method public getHh()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->hh:I

    return v0
.end method

.method public getMm()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->mm:I

    return v0
.end method

.method public getMo()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->mo:I

    return v0
.end method

.method public getRepeat()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->repeat:I

    return v0
.end method

.method public getSs()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->ss:I

    return v0
.end method

.method public getYy()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->yy:I

    return v0
.end method

.method public isUseAble()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->isUseAble:Z

    return v0
.end method

.method public setAcitonEndName(Ljava/lang/String;)V
    .locals 0
    .param p1, "acitonEndName"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->acitonEndName:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setActionStartName(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionStartName"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->actionStartName:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setActionType(I)V
    .locals 0
    .param p1, "actionType"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->actionType:I

    .line 91
    return-void
.end method

.method public setDate(I)V
    .locals 0
    .param p1, "date"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->date:I

    .line 83
    return-void
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->day:I

    .line 75
    return-void
.end method

.method public setHh(I)V
    .locals 0
    .param p1, "hh"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->hh:I

    .line 99
    return-void
.end method

.method public setMm(I)V
    .locals 0
    .param p1, "mm"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->mm:I

    .line 107
    return-void
.end method

.method public setMo(I)V
    .locals 0
    .param p1, "mo"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->mo:I

    .line 67
    return-void
.end method

.method public setRepeat(I)V
    .locals 0
    .param p1, "repeat"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->repeat:I

    .line 115
    return-void
.end method

.method public setSs(I)V
    .locals 0
    .param p1, "ss"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->ss:I

    .line 51
    return-void
.end method

.method public setUseAble(Z)V
    .locals 0
    .param p1, "isUseAble"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->isUseAble:Z

    .line 123
    return-void
.end method

.method public setYy(I)V
    .locals 0
    .param p1, "yy"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/ubtechinc/service/model/AlarmEntrity;->yy:I

    .line 59
    return-void
.end method
