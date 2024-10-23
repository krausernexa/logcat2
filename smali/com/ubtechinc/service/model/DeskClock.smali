.class public Lcom/ubtechinc/service/model/DeskClock;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ubtechinc/service/model/DeskClock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _id:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x1
    .end annotation
.end field

.field private alarmtime:J
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x5
    .end annotation
.end field

.field private alert:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x9
    .end annotation
.end field

.field private daysofweek:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x4
    .end annotation
.end field

.field private dtstart:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xa
    .end annotation
.end field

.field private enabled:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x6
    .end annotation
.end field

.field private hour:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x2
    .end annotation
.end field

.field private iscomplete:Z
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0xb
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x8
    .end annotation
.end field

.field private minutes:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x3
    .end annotation
.end field

.field private type:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x0
    .end annotation
.end field

.field private vibrate:I
    .annotation runtime Lorg/msgpack/annotation/Index;
        value = 0x7
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/ubtechinc/service/model/DeskClock$1;

    invoke-direct {v0}, Lcom/ubtechinc/service/model/DeskClock$1;-><init>()V

    sput-object v0, Lcom/ubtechinc/service/model/DeskClock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ubtechinc/service/model/DeskClock;->_id:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ubtechinc/service/model/DeskClock;->enabled:Z

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ubtechinc/service/model/DeskClock;->hour:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ubtechinc/service/model/DeskClock;->minutes:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ubtechinc/service/model/DeskClock;->daysofweek:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ubtechinc/service/model/DeskClock;->alarmtime:J

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ubtechinc/service/model/DeskClock;->vibrate:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/service/model/DeskClock;->message:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/service/model/DeskClock;->alert:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/service/model/DeskClock;->dtstart:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/ubtechinc/service/model/DeskClock;->iscomplete:Z

    .line 198
    return-void

    :cond_0
    move v0, v2

    .line 188
    goto :goto_0

    :cond_1
    move v1, v2

    .line 197
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public getAlarmtime()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/ubtechinc/service/model/DeskClock;->alarmtime:J

    return-wide v0
.end method

.method public getAlert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/ubtechinc/service/model/DeskClock;->alert:Ljava/lang/String;

    return-object v0
.end method

.method public getDaysofweek()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/ubtechinc/service/model/DeskClock;->daysofweek:I

    return v0
.end method

.method public getDtstart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ubtechinc/service/model/DeskClock;->dtstart:Ljava/lang/String;

    return-object v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/ubtechinc/service/model/DeskClock;->hour:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ubtechinc/service/model/DeskClock;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/ubtechinc/service/model/DeskClock;->minutes:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/ubtechinc/service/model/DeskClock;->type:I

    return v0
.end method

.method public getVibrate()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/ubtechinc/service/model/DeskClock;->vibrate:I

    return v0
.end method

.method public get_id()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/ubtechinc/service/model/DeskClock;->_id:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/ubtechinc/service/model/DeskClock;->enabled:Z

    return v0
.end method

.method public isIscomplete()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/ubtechinc/service/model/DeskClock;->iscomplete:Z

    return v0
.end method

.method public setAlarmtime(J)V
    .locals 1
    .param p1, "alarmtime"    # J

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/ubtechinc/service/model/DeskClock;->alarmtime:J

    .line 109
    return-void
.end method

.method public setAlert(Ljava/lang/String;)V
    .locals 0
    .param p1, "alert"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/ubtechinc/service/model/DeskClock;->alert:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setDaysofweek(I)V
    .locals 0
    .param p1, "daysofweek"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/ubtechinc/service/model/DeskClock;->daysofweek:I

    .line 101
    return-void
.end method

.method public setDtstart(Ljava/lang/String;)V
    .locals 0
    .param p1, "dtstart"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/ubtechinc/service/model/DeskClock;->dtstart:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/ubtechinc/service/model/DeskClock;->enabled:Z

    .line 141
    return-void
.end method

.method public setHour(I)V
    .locals 0
    .param p1, "hour"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/ubtechinc/service/model/DeskClock;->hour:I

    .line 85
    return-void
.end method

.method public setIscomplete(Z)V
    .locals 0
    .param p1, "iscomplete"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/ubtechinc/service/model/DeskClock;->iscomplete:Z

    .line 53
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/ubtechinc/service/model/DeskClock;->message:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setMinutes(I)V
    .locals 0
    .param p1, "minutes"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/ubtechinc/service/model/DeskClock;->minutes:I

    .line 93
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/ubtechinc/service/model/DeskClock;->type:I

    .line 69
    return-void
.end method

.method public setVibrate(I)V
    .locals 0
    .param p1, "vibrate"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/ubtechinc/service/model/DeskClock;->vibrate:I

    .line 117
    return-void
.end method

.method public set_id(I)V
    .locals 0
    .param p1, "_id"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/ubtechinc/service/model/DeskClock;->_id:I

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ubtechinc/service/model/DeskClock;->_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ubtechinc/service/model/DeskClock;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ubtechinc/service/model/DeskClock;->minutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ubtechinc/service/model/DeskClock;->daysofweek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ubtechinc/service/model/DeskClock;->alarmtime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ubtechinc/service/model/DeskClock;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ubtechinc/service/model/DeskClock;->vibrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/service/model/DeskClock;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/service/model/DeskClock;->alert:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/service/model/DeskClock;->dtstart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    iget v0, p0, Lcom/ubtechinc/service/model/DeskClock;->_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-boolean v0, p0, Lcom/ubtechinc/service/model/DeskClock;->enabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Lcom/ubtechinc/service/model/DeskClock;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Lcom/ubtechinc/service/model/DeskClock;->minutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Lcom/ubtechinc/service/model/DeskClock;->daysofweek:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-wide v4, p0, Lcom/ubtechinc/service/model/DeskClock;->alarmtime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    iget v0, p0, Lcom/ubtechinc/service/model/DeskClock;->vibrate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v0, p0, Lcom/ubtechinc/service/model/DeskClock;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/ubtechinc/service/model/DeskClock;->alert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/ubtechinc/service/model/DeskClock;->dtstart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-boolean v0, p0, Lcom/ubtechinc/service/model/DeskClock;->iscomplete:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    return-void

    :cond_0
    move v0, v2

    .line 153
    goto :goto_0

    :cond_1
    move v1, v2

    .line 163
    goto :goto_1
.end method
