.class public final Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;,
        Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$Columns;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alert:Landroid/net/Uri;

.field public daysOfWeek:Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

.field public dtstart:J

.field public dttime:J

.field public enabled:Z

.field public hour:I

.field public id:I

.field public iscomplete:Z

.field public label:Ljava/lang/String;

.field public minutes:I

.field public silent:Z

.field public time:J

.field public vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$1;

    invoke-direct {v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$1;-><init>()V

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    const/4 v1, -0x1

    iput v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->id:I

    .line 250
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 251
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 252
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->hour:I

    .line 253
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->minutes:I

    .line 254
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->vibrate:Z

    .line 255
    new-instance v1, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->daysOfWeek:Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    .line 256
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->alert:Landroid/net/Uri;

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->id:I

    .line 206
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->enabled:Z

    .line 207
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->hour:I

    .line 208
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->minutes:I

    .line 209
    new-instance v1, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->daysOfWeek:Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    .line 210
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->time:J

    .line 211
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->vibrate:Z

    .line 212
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->label:Ljava/lang/String;

    .line 213
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "alertString":Ljava/lang/String;
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->dtstart:J

    .line 215
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v3, v2

    :cond_0
    iput-boolean v3, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->iscomplete:Z

    .line 216
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->dttime:J

    .line 217
    const-string v1, "silent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    iput-boolean v2, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->silent:Z

    .line 232
    :cond_1
    :goto_2
    return-void

    .end local v0    # "alertString":Ljava/lang/String;
    :cond_2
    move v1, v3

    .line 206
    goto :goto_0

    :cond_3
    move v1, v3

    .line 211
    goto :goto_1

    .line 221
    .restart local v0    # "alertString":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 222
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->alert:Landroid/net/Uri;

    .line 227
    :cond_5
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->alert:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 229
    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->alert:Landroid/net/Uri;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->id:I

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->enabled:Z

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->hour:I

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->minutes:I

    .line 239
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->daysOfWeek:Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->time:J

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->vibrate:Z

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->label:Ljava/lang/String;

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->alert:Landroid/net/Uri;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->silent:Z

    .line 245
    return-void

    :cond_0
    move v0, v2

    .line 236
    goto :goto_0

    :cond_1
    move v0, v2

    .line 241
    goto :goto_1

    :cond_2
    move v1, v2

    .line 244
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 261
    :cond_0
    const v0, 0x7f08004e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->label:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->minutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->daysOfWeek:Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    .line 199
    invoke-virtual {v1}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->vibrate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dtstart ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->dtstart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " iscomplete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->iscomplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dttime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->dttime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-boolean v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->enabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->minutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->daysOfWeek:Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-wide v4, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->time:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    iget-boolean v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->vibrate:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    iget-boolean v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->silent:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void

    :cond_0
    move v0, v2

    .line 53
    goto :goto_0

    :cond_1
    move v0, v2

    .line 59
    goto :goto_1

    :cond_2
    move v1, v2

    .line 62
    goto :goto_2
.end method
