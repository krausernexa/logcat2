.class public Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;
.super Ljava/lang/Object;
.source "Remind.java"


# instance fields
.field private _id:I

.field private alarmtime:J

.field private alert:Ljava/lang/String;

.field private daysofweek:I

.field private dtstart:Ljava/lang/String;

.field private enabled:Z

.field private hour:I

.field private iscomplete:Z

.field private message:Ljava/lang/String;

.field private minutes:I

.field private type:I

.field private vibrate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmtime()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->alarmtime:J

    return-wide v0
.end method

.method public getAlert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->alert:Ljava/lang/String;

    return-object v0
.end method

.method public getDaysofweek()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->daysofweek:I

    return v0
.end method

.method public getDtstart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->dtstart:Ljava/lang/String;

    return-object v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->hour:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->minutes:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->type:I

    return v0
.end method

.method public getVibrate()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->vibrate:I

    return v0
.end method

.method public get_id()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->_id:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->enabled:Z

    return v0
.end method

.method public isIscomplete()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->iscomplete:Z

    return v0
.end method

.method public setAlarmtime(J)V
    .locals 1
    .param p1, "alarmtime"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->alarmtime:J

    .line 89
    return-void
.end method

.method public setAlert(Ljava/lang/String;)V
    .locals 0
    .param p1, "alert"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->alert:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setDaysofweek(I)V
    .locals 0
    .param p1, "daysofweek"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->daysofweek:I

    .line 81
    return-void
.end method

.method public setDtstart(Ljava/lang/String;)V
    .locals 0
    .param p1, "dtstart"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->dtstart:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->enabled:Z

    .line 121
    return-void
.end method

.method public setHour(I)V
    .locals 0
    .param p1, "hour"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->hour:I

    .line 65
    return-void
.end method

.method public setIscomplete(Z)V
    .locals 0
    .param p1, "iscomplete"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->iscomplete:Z

    .line 33
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->message:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setMinutes(I)V
    .locals 0
    .param p1, "minutes"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->minutes:I

    .line 73
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->type:I

    .line 49
    return-void
.end method

.method public setVibrate(I)V
    .locals 0
    .param p1, "vibrate"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->vibrate:I

    .line 97
    return-void
.end method

.method public set_id(I)V
    .locals 0
    .param p1, "_id"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->_id:I

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->minutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->daysofweek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->alarmtime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->vibrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->alert:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->dtstart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
