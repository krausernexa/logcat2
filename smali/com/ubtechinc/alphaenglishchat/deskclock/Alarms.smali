.class public Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;
.super Ljava/lang/Object;
.source "Alarms.java"


# static fields
.field public static final ALARM_ALERT_ACTION:Ljava/lang/String; = "com.ubtechinc.alpha2services.ALARM_ALERT"

.field public static final ALARM_ALERT_SILENT:Ljava/lang/String; = "silent"

.field public static final ALARM_DISMISS_ACTION:Ljava/lang/String; = "com.android.deskclock.ALARM_DISMISS"

.field public static final ALARM_DONE_ACTION:Ljava/lang/String; = "com.android.deskclock.ALARM_DONE"

.field public static final ALARM_ID:Ljava/lang/String; = "alarm_id"

.field public static final ALARM_INTENT_EXTRA:Ljava/lang/String; = "intent.extra.alarm"

.field public static final ALARM_KILLED:Ljava/lang/String; = "alarm_killed"

.field public static final ALARM_KILLED_TIMEOUT:Ljava/lang/String; = "alarm_killed_timeout"

.field public static final ALARM_RAW_DATA:Ljava/lang/String; = "intent.extra.alarm_raw"

.field public static final ALARM_SNOOZE_ACTION:Ljava/lang/String; = "com.android.deskclock.ALARM_SNOOZE"

.field public static final CANCEL_SNOOZE:Ljava/lang/String; = "cancel_snooze"

.field private static final DM12:Ljava/lang/String; = "E h:mm aa"

.field private static final DM24:Ljava/lang/String; = "E k:mm"

.field private static final M12:Ljava/lang/String; = "h:mm aa"

.field static final M24:Ljava/lang/String; = "kk:mm"

.field static final PREFERENCES:Ljava/lang/String; = "AlarmClock"

.field static final PREF_SNOOZE_ID:Ljava/lang/String; = "snooze_id"

.field static final PREF_SNOOZE_TIME:Ljava/lang/String; = "snooze_time"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAlarm(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;

    .prologue
    .line 205
    invoke-static {p1}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->createContentValues(Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;)Landroid/content/ContentValues;

    move-result-object v3

    .line 206
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 208
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p1, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->id:I

    .line 210
    invoke-static {p1}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->calculateAlarm(Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;)J

    move-result-wide v0

    .line 211
    .local v0, "timeInMillis":J
    iget-boolean v4, p1, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->enabled:Z

    if-eqz v4, :cond_0

    .line 212
    invoke-static {p0, v0, v1}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->clearSnoozeIfNeeded(Landroid/content/Context;J)V

    .line 214
    :cond_0
    invoke-static {p0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 215
    iget v4, p1, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->id:I

    int-to-long v4, v4

    return-wide v4
.end method

.method private static calculateAlarm(Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;)J
    .locals 5
    .param p0, "alarm"    # Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->daysOfWeek:Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    .line 250
    iget-wide v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->dtstart:J

    iget v2, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->hour:I

    iget v3, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->minutes:I

    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->daysOfWeek:Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->calculateAlarm(JIILcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 253
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->dtstart:J

    iget v2, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->hour:I

    iget v3, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->minutes:I

    invoke-static {v0, v1, v2, v3}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->calculateAlarm(JII)Ljava/util/Calendar;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method static calculateAlarm(JII)Ljava/util/Calendar;
    .locals 10
    .param p0, "date"    # J
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    .line 266
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 268
    .local v1, "cal":Ljava/util/Calendar;
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 270
    const/16 v7, 0xb

    invoke-virtual {v1, v7, p2}, Ljava/util/Calendar;->set(II)V

    .line 271
    const/16 v7, 0xc

    invoke-virtual {v1, v7, p3}, Ljava/util/Calendar;->set(II)V

    .line 272
    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 273
    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 275
    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 277
    .local v2, "day":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 278
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 280
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 281
    .local v5, "nowHour":I
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 282
    .local v6, "nowMinute":I
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 284
    .local v4, "nowDay":I
    if-ne v4, v2, :cond_2

    .line 286
    if-lt p2, v5, :cond_0

    if-ne p2, v5, :cond_1

    if-gt p3, v6, :cond_1

    .line 287
    :cond_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 288
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 289
    .local v3, "max":I
    if-ge v3, v2, :cond_1

    .line 290
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 305
    .end local v3    # "max":I
    :cond_1
    :goto_0
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 306
    const/16 v7, 0xb

    invoke-virtual {v0, v7, p2}, Ljava/util/Calendar;->set(II)V

    .line 307
    const/16 v7, 0xc

    invoke-virtual {v0, v7, p3}, Ljava/util/Calendar;->set(II)V

    .line 308
    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 309
    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 310
    return-object v0

    .line 293
    :cond_2
    if-ge v4, v2, :cond_3

    .line 294
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 295
    .restart local v3    # "max":I
    if-ge v3, v2, :cond_1

    .line 296
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 299
    .end local v3    # "max":I
    :cond_3
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 300
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 301
    .restart local v3    # "max":I
    if-ge v3, v2, :cond_1

    .line 302
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method static calculateAlarm(JIILcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;)Ljava/util/Calendar;
    .locals 8
    .param p0, "dtstart"    # J
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "daysOfWeek"    # Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    .prologue
    .line 328
    const-string v5, "zdy"

    const-string v6, "calculateAlarm1"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {p4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v5

    if-nez v5, :cond_0

    .line 331
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 333
    .local v2, "cal":Ljava/util/Calendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 335
    const/16 v5, 0xb

    invoke-virtual {v2, v5, p2}, Ljava/util/Calendar;->set(II)V

    .line 336
    const/16 v5, 0xc

    invoke-virtual {v2, v5, p3}, Ljava/util/Calendar;->set(II)V

    .line 337
    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 338
    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 361
    .end local v2    # "cal":Ljava/util/Calendar;
    :goto_0
    return-object v2

    .line 343
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 344
    .local v1, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 346
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 347
    .local v3, "nowHour":I
    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 350
    .local v4, "nowMinute":I
    if-lt p2, v3, :cond_1

    if-ne p2, v3, :cond_2

    if-gt p3, v4, :cond_2

    .line 351
    :cond_1
    const/4 v5, 0x6

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 353
    :cond_2
    const/16 v5, 0xb

    invoke-virtual {v1, v5, p2}, Ljava/util/Calendar;->set(II)V

    .line 354
    const/16 v5, 0xc

    invoke-virtual {v1, v5, p3}, Ljava/util/Calendar;->set(II)V

    .line 355
    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 356
    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 358
    invoke-virtual {p4, v1}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->getNextAlarm(Ljava/util/Calendar;)I

    move-result v0

    .line 359
    .local v0, "addDays":I
    if-lez v0, :cond_3

    .line 360
    const/4 v5, 0x7

    invoke-virtual {v1, v5, v0}, Ljava/util/Calendar;->add(II)V

    :cond_3
    move-object v2, v1

    .line 361
    goto :goto_0
.end method

.method public static calculateNextAlert(Landroid/content/Context;)Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 521
    const/4 v1, 0x0

    .line 522
    .local v1, "alarm":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    const-wide v4, 0x7fffffffffffffffL

    .line 523
    .local v4, "minTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 524
    .local v6, "now":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->getFilteredAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v2

    .line 525
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_4

    .line 526
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 528
    :cond_0
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;

    invoke-direct {v0, v2}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 531
    .local v0, "a":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    iget-wide v8, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->time:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_5

    .line 532
    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->calculateAlarm(Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->time:J

    .line 539
    :cond_1
    iget-wide v8, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->time:J

    cmp-long v3, v8, v4

    if-gez v3, :cond_2

    iget-wide v8, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->time:J

    cmp-long v3, v8, v6

    if-lez v3, :cond_2

    .line 540
    iget-wide v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->time:J

    .line 541
    move-object v1, v0

    .line 543
    :cond_2
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 545
    .end local v0    # "a":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 547
    :cond_4
    return-object v1

    .line 533
    .restart local v0    # "a":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    :cond_5
    iget-wide v8, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->time:J

    cmp-long v3, v8, v6

    if-gez v3, :cond_1

    .line 536
    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;Z)V

    goto :goto_0
.end method

.method private static clearSnoozeIfNeeded(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarmTime"    # J

    .prologue
    .line 367
    const-string v1, "AlarmClock"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 368
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "snooze_time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 369
    .local v2, "snoozeTime":J
    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 370
    invoke-static {p0, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->clearSnoozePreference(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 372
    :cond_0
    return-void
.end method

.method private static clearSnoozePreference(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v4, -0x1

    .line 391
    const-string v3, "snooze_id"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 392
    .local v0, "alarmId":I
    if-eq v0, v4, :cond_0

    .line 393
    const-string v3, "notification"

    .line 394
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 395
    .local v2, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 398
    .end local v2    # "nm":Landroid/app/NotificationManager;
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 399
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v3, "snooze_id"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 400
    const-string v3, "snooze_time"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 401
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 402
    return-void
.end method

.method private static createContentValues(Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;)Landroid/content/ContentValues;
    .locals 6
    .param p0, "alarm"    # Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;

    .prologue
    .line 220
    new-instance v2, Landroid/content/ContentValues;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 223
    .local v2, "values":Landroid/content/ContentValues;
    const-wide/16 v0, 0x0

    .line 224
    .local v0, "time":J
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->daysOfWeek:Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v3}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    invoke-static {p0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->calculateAlarm(Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;)J

    move-result-wide v0

    .line 228
    :cond_0
    const-string v4, "enabled"

    iget-boolean v3, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->enabled:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    const-string v3, "hour"

    iget v4, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->hour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    const-string v3, "minutes"

    iget v4, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->minutes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    const-string v3, "alarmtime"

    iget-wide v4, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 232
    const-string v3, "daysofweek"

    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->daysOfWeek:Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    const-string v3, "vibrate"

    iget-boolean v4, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->vibrate:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 234
    const-string v3, "message"

    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v4, "alert"

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->alert:Landroid/net/Uri;

    if-nez v3, :cond_2

    const-string v3, "silent"

    :goto_1
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v3, "dtstart"

    iget-wide v4, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->dtstart:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 241
    const-string v3, "iscomplete"

    iget-boolean v4, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->iscomplete:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 242
    const-string v3, "dttime"

    iget-wide v4, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->dttime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 243
    return-object v2

    .line 228
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 236
    :cond_2
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->alert:Landroid/net/Uri;

    .line 239
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method static disableAlert(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 617
    const-string v2, "alarm"

    .line 618
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 619
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.ubtechinc.alpha2services.ALARM_ALERT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {p0, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 622
    .local v1, "sender":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 623
    invoke-static {p0, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->setStatusBarIcon(Landroid/content/Context;Z)V

    .line 624
    const-string v2, ""

    invoke-static {p0, v2}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method static disableSnoozeAlert(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    const/4 v4, -0x1

    .line 599
    const-string v2, "AlarmClock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 600
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "snooze_id"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 601
    .local v1, "snoozeId":I
    if-ne v1, v4, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    if-ne v1, p1, :cond_0

    .line 606
    invoke-static {p0, v0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->clearSnoozePreference(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method public static dtLongToString(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 199
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "df":Ljava/text/SimpleDateFormat;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "dt":Ljava/lang/String;
    return-object v1
.end method

.method public static enableAlarm(Landroid/content/Context;IZ)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 560
    invoke-static {p0, p1, p2}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->enableAlarmInternal(Landroid/content/Context;IZ)V

    .line 561
    invoke-static {p0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 562
    return-void
.end method

.method private static enableAlarmInternal(Landroid/content/Context;IZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 566
    .line 567
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;

    move-result-object v0

    .line 566
    invoke-static {p0, v0, p2}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->enableAlarmInternal(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;Z)V

    .line 568
    return-void
.end method

.method private static enableAlarmInternal(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v8, 0x0

    .line 572
    if-nez p1, :cond_0

    .line 596
    :goto_0
    return-void

    .line 575
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 577
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 578
    .local v1, "values":Landroid/content/ContentValues;
    const-string v5, "enabled"

    if-eqz p2, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 582
    if-eqz p2, :cond_3

    .line 583
    const-wide/16 v2, 0x0

    .line 584
    .local v2, "time":J
    iget-object v4, p1, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->daysOfWeek:Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v4

    if-nez v4, :cond_1

    .line 585
    invoke-static {p1}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->calculateAlarm(Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;)J

    move-result-wide v2

    .line 587
    :cond_1
    const-string v4, "alarmtime"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 593
    .end local v2    # "time":J
    :goto_2
    sget-object v4, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v5, p1, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->id:I

    int-to-long v6, v5

    .line 594
    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 593
    invoke-virtual {v0, v4, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 578
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 590
    :cond_3
    iget v4, p1, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->id:I

    invoke-static {p0, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method private static enableAlert(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;J)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    .param p2, "atTimeInMillis"    # J

    .prologue
    const/4 v8, 0x0

    .line 459
    const-string v6, "alarm"

    .line 460
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 462
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.ubtechinc.alpha2services.ALARM_ALERT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 474
    .local v3, "out":Landroid/os/Parcel;
    invoke-virtual {p1, v3, v8}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->writeToParcel(Landroid/os/Parcel;I)V

    .line 475
    invoke-virtual {v3, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 476
    const-string v6, "intent.extra.alarm_raw"

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 478
    const/high16 v6, 0x8000000

    invoke-static {p0, v8, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 481
    .local v4, "sender":Landroid/app/PendingIntent;
    invoke-virtual {v0, v8, p2, p3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 483
    const/4 v6, 0x1

    invoke-static {p0, v6}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->setStatusBarIcon(Landroid/content/Context;Z)V

    .line 485
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 486
    .local v1, "c":Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 487
    invoke-static {p0, v1}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    .line 488
    .local v5, "timeString":Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method private static enableSnoozeAlert(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 421
    const-string v6, "AlarmClock"

    invoke-virtual {p0, v6, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 423
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "snooze_id"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 424
    .local v1, "id":I
    if-ne v1, v7, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v3

    .line 427
    :cond_1
    const-string v6, "snooze_time"

    const-wide/16 v8, -0x1

    invoke-interface {v2, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 430
    .local v4, "time":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;

    move-result-object v0

    .line 431
    .local v0, "alarm":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    if-eqz v0, :cond_0

    .line 437
    iput-wide v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->time:J

    .line 439
    invoke-static {p0, v0, v4, v5}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->enableAlert(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;J)V

    .line 440
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    .line 501
    invoke-static {p0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "E k:mm"

    .line 502
    .local v0, "format":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const-string v1, ""

    :goto_1
    return-object v1

    .line 501
    .end local v0    # "format":Ljava/lang/String;
    :cond_0
    const-string v0, "E h:mm aa"

    goto :goto_0

    .line 502
    .restart local v0    # "format":Ljava/lang/String;
    :cond_1
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1
.end method

.method static formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    .line 507
    invoke-static {p0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "kk:mm"

    .line 508
    .local v0, "format":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    const-string v1, ""

    :goto_1
    return-object v1

    .line 507
    .end local v0    # "format":Ljava/lang/String;
    :cond_0
    const-string v0, "h:mm aa"

    goto :goto_0

    .line 508
    .restart local v0    # "format":Ljava/lang/String;
    :cond_1
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1
.end method

.method static get24HourMode(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 512
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getAlarm(Landroid/content/ContentResolver;I)Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    .locals 8
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "alarmId"    # I

    .prologue
    const/4 v3, 0x0

    .line 444
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    .line 445
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 444
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 447
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 448
    .local v6, "alarm":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    if-eqz v7, :cond_1

    .line 449
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    new-instance v6, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;

    .end local v6    # "alarm":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    invoke-direct {v6, v7}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 452
    .restart local v6    # "alarm":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 454
    :cond_1
    return-object v6
.end method

.method public static getAlarmList(Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 6
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;>;"
    invoke-static {p0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v2

    .line 113
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 114
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1

    .line 116
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;

    invoke-direct {v0, v2}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 117
    .local v0, "alarm":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    new-instance v1, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;

    invoke-direct {v1}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;-><init>()V

    .line 118
    .local v1, "bean":Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;
    iget v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->id:I

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->set_id(I)V

    .line 119
    iget v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->hour:I

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setHour(I)V

    .line 120
    iget v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->minutes:I

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setMinutes(I)V

    .line 121
    iget-boolean v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->enabled:Z

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setEnabled(Z)V

    .line 122
    iget-object v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->daysOfWeek:Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setDaysofweek(I)V

    .line 123
    iget-boolean v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->vibrate:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setVibrate(I)V

    .line 124
    iget-object v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setMessage(Ljava/lang/String;)V

    .line 125
    iget-object v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setAlert(Ljava/lang/String;)V

    .line 126
    iget-wide v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->dtstart:J

    invoke-static {v4, v5}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->dtLongToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setDtstart(Ljava/lang/String;)V

    .line 127
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 123
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 132
    .end local v0    # "alarm":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    .end local v1    # "bean":Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 133
    return-object v3
.end method

.method public static getAlarmList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "dtstart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;>;"
    invoke-static {p0, p1}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 148
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 149
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1

    .line 151
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;

    invoke-direct {v0, v2}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 152
    .local v0, "alarm":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    new-instance v1, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;

    invoke-direct {v1}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;-><init>()V

    .line 153
    .local v1, "bean":Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;
    iget v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->id:I

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->set_id(I)V

    .line 154
    iget v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->hour:I

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setHour(I)V

    .line 155
    iget v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->minutes:I

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setMinutes(I)V

    .line 156
    iget-boolean v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->enabled:Z

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setEnabled(Z)V

    .line 157
    iget-object v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->daysOfWeek:Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setDaysofweek(I)V

    .line 158
    iget-boolean v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->vibrate:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setVibrate(I)V

    .line 159
    iget-object v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setMessage(Ljava/lang/String;)V

    .line 160
    iget-object v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setAlert(Ljava/lang/String;)V

    .line 161
    iget-wide v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->dtstart:J

    invoke-static {v4, v5}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->dtLongToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setDtstart(Ljava/lang/String;)V

    .line 162
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 158
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 167
    .end local v0    # "alarm":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    .end local v1    # "bean":Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 168
    return-object v3
.end method

.method public static getAlarmListByDate(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;>;"
    invoke-static {p0, p1}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 175
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 176
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1

    .line 178
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;

    invoke-direct {v0, v2}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;-><init>(Landroid/database/Cursor;)V

    .line 179
    .local v0, "alarm":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    new-instance v1, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;

    invoke-direct {v1}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;-><init>()V

    .line 180
    .local v1, "bean":Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;
    iget v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->id:I

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->set_id(I)V

    .line 181
    iget v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->hour:I

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setHour(I)V

    .line 182
    iget v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->minutes:I

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setMinutes(I)V

    .line 183
    iget-boolean v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->enabled:Z

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setEnabled(Z)V

    .line 184
    iget-object v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->daysOfWeek:Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setDaysofweek(I)V

    .line 185
    iget-boolean v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->vibrate:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setVibrate(I)V

    .line 186
    iget-object v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setMessage(Ljava/lang/String;)V

    .line 187
    iget-object v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setAlert(Ljava/lang/String;)V

    .line 188
    iget-wide v4, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->dtstart:J

    invoke-static {v4, v5}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->dtLongToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;->setDtstart(Ljava/lang/String;)V

    .line 189
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 185
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 194
    .end local v0    # "alarm":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    .end local v1    # "bean":Lcom/ubtechinc/alphaenglishchat/deskclock/Remind;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 195
    return-object v3
.end method

.method public static getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v3, 0x0

    .line 105
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v5, "hour, minutes ASC"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getAlarmsCursor(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "dtstart"    # Ljava/lang/String;

    .prologue
    .line 138
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v3, "dtstart =? "

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const-string v5, "hour, minutes ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getFilteredAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v4, 0x0

    .line 553
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v3, "enabled=1"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeString"    # Ljava/lang/String;

    .prologue
    .line 516
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 518
    return-void
.end method

.method static saveSnoozeAlert(Landroid/content/Context;IJ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "time"    # J

    .prologue
    .line 376
    const-string v2, "AlarmClock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 377
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 378
    invoke-static {p0, v1}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->clearSnoozePreference(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 386
    :goto_0
    invoke-static {p0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 387
    return-void

    .line 380
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 381
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "snooze_id"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 382
    const-string v2, "snooze_time"

    invoke-interface {v0, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 383
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static setNextAlert(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 410
    invoke-static {p0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->enableSnoozeAlert(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    invoke-static {p0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->calculateNextAlert(Landroid/content/Context;)Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;

    move-result-object v0

    .line 412
    .local v0, "alarm":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    if-eqz v0, :cond_1

    .line 413
    iget-wide v2, v0, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;->time:J

    invoke-static {p0, v0, v2, v3}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->enableAlert(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;J)V

    .line 418
    .end local v0    # "alarm":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    :cond_0
    :goto_0
    return-void

    .line 415
    .restart local v0    # "alarm":Lcom/ubtechinc/alphaenglishchat/deskclock/Alarm;
    :cond_1
    invoke-static {p0}, Lcom/ubtechinc/alphaenglishchat/deskclock/Alarms;->disableAlert(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static setStatusBarIcon(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 492
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    .local v0, "alarmChanged":Landroid/content/Intent;
    const-string v1, "alarmSet"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 494
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 495
    return-void
.end method
