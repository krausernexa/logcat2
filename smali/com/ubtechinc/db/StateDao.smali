.class public Lcom/ubtechinc/db/StateDao;
.super Ljava/lang/Object;
.source "StateDao.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "StateDao"

    sput-object v0, Lcom/ubtechinc/db/StateDao;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearData(Landroid/content/Context;)I
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 86
    const-class v2, Lcom/ubtechinc/db/StateDao;

    monitor-enter v2

    const/4 v0, -0x1

    .line 88
    .local v0, "c":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/ubtechinc/db/provider/Provider$StateColums;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 93
    :goto_0
    monitor-exit v2

    return v0

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 90
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized insertDebug(Landroid/content/Context;I)I
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "i"    # I

    .prologue
    .line 38
    const-class v5, Lcom/ubtechinc/db/StateDao;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Lcom/ubtechinc/db/StateDao;->isExist(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    invoke-static {p0, p1}, Lcom/ubtechinc/db/StateDao;->updateDebug(Landroid/content/Context;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 55
    :goto_0
    monitor-exit v5

    return v4

    .line 41
    :cond_0
    :try_start_1
    new-instance v1, Lcom/ubtechinc/db/pojos/Alpha2State;

    invoke-direct {v1}, Lcom/ubtechinc/db/pojos/Alpha2State;-><init>()V

    .line 42
    .local v1, "state":Lcom/ubtechinc/db/pojos/Alpha2State;
    iput p1, v1, Lcom/ubtechinc/db/pojos/Alpha2State;->debug:I

    .line 43
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 44
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "debug"

    iget v6, v1, Lcom/ubtechinc/db/pojos/Alpha2State;->debug:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/ubtechinc/db/provider/Provider$StateColums;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 47
    .local v2, "uri":Landroid/net/Uri;
    sget-object v4, Lcom/ubtechinc/db/StateDao;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "lastPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    sget-object v4, Lcom/ubtechinc/db/StateDao;->TAG:Ljava/lang/String;

    const-string v6, "insert failure!"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 52
    :cond_1
    sget-object v4, Lcom/ubtechinc/db/StateDao;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert success! the id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 38
    .end local v0    # "lastPath":Ljava/lang/String;
    .end local v1    # "state":Lcom/ubtechinc/db/pojos/Alpha2State;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized insertPower(Landroid/content/Context;I)I
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "i"    # I

    .prologue
    .line 17
    const-class v5, Lcom/ubtechinc/db/StateDao;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Lcom/ubtechinc/db/StateDao;->isExist(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 18
    invoke-static {p0, p1}, Lcom/ubtechinc/db/StateDao;->updatePower(Landroid/content/Context;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 34
    :goto_0
    monitor-exit v5

    return v4

    .line 20
    :cond_0
    :try_start_1
    new-instance v1, Lcom/ubtechinc/db/pojos/Alpha2State;

    invoke-direct {v1}, Lcom/ubtechinc/db/pojos/Alpha2State;-><init>()V

    .line 21
    .local v1, "state":Lcom/ubtechinc/db/pojos/Alpha2State;
    iput p1, v1, Lcom/ubtechinc/db/pojos/Alpha2State;->power:I

    .line 22
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 23
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "power"

    iget v6, v1, Lcom/ubtechinc/db/pojos/Alpha2State;->power:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/ubtechinc/db/provider/Provider$StateColums;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 26
    .local v2, "uri":Landroid/net/Uri;
    sget-object v4, Lcom/ubtechinc/db/StateDao;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "lastPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 29
    sget-object v4, Lcom/ubtechinc/db/StateDao;->TAG:Ljava/lang/String;

    const-string v6, "insert failure!"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 31
    :cond_1
    sget-object v4, Lcom/ubtechinc/db/StateDao;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert success! the id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 17
    .end local v0    # "lastPath":Ljava/lang/String;
    .end local v1    # "state":Lcom/ubtechinc/db/pojos/Alpha2State;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static declared-synchronized isExist(Landroid/content/Context;)Z
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 113
    const-class v7, Lcom/ubtechinc/db/StateDao;

    monitor-enter v7

    const/4 v6, 0x0

    .line 115
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/ubtechinc/db/provider/Provider$StateColums;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 117
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const/4 v0, 0x1

    .line 122
    if-eqz v6, :cond_0

    .line 123
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :cond_0
    :goto_0
    monitor-exit v7

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 122
    if-eqz v6, :cond_0

    .line 123
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 122
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_2

    .line 123
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static declared-synchronized query(Landroid/content/Context;)Lcom/ubtechinc/db/pojos/Alpha2State;
    .locals 9
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 59
    const-class v8, Lcom/ubtechinc/db/StateDao;

    monitor-enter v8

    const/4 v6, 0x0

    .line 61
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/ubtechinc/db/provider/Provider$StateColums;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "power"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "debug"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 65
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    new-instance v7, Lcom/ubtechinc/db/pojos/Alpha2State;

    invoke-direct {v7}, Lcom/ubtechinc/db/pojos/Alpha2State;-><init>()V

    .line 67
    .local v7, "p":Lcom/ubtechinc/db/pojos/Alpha2State;
    const-string v0, "power"

    .line 68
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 67
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/ubtechinc/db/pojos/Alpha2State;->power:I

    .line 69
    const-string v0, "debug"

    .line 70
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 69
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/ubtechinc/db/pojos/Alpha2State;->debug:I

    .line 71
    sget-object v0, Lcom/ubtechinc/db/StateDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alpha2State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/ubtechinc/db/pojos/Alpha2State;->power:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/ubtechinc/db/pojos/Alpha2State;->debug:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    if-eqz v6, :cond_0

    .line 80
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .end local v7    # "p":Lcom/ubtechinc/db/pojos/Alpha2State;
    :cond_0
    :goto_0
    monitor-exit v8

    return-object v7

    .line 75
    :cond_1
    :try_start_2
    sget-object v0, Lcom/ubtechinc/db/StateDao;->TAG:Ljava/lang/String;

    const-string v1, "query failure!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    if-eqz v6, :cond_0

    .line 80
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 79
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_2

    .line 80
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private static declared-synchronized updateDebug(Landroid/content/Context;I)I
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "debug"    # I

    .prologue
    .line 105
    const-class v3, Lcom/ubtechinc/db/StateDao;

    monitor-enter v3

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 106
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "debug"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/ubtechinc/db/provider/Provider$StateColums;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 109
    .local v0, "c":I
    monitor-exit v3

    return v0

    .line 105
    .end local v0    # "c":I
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static declared-synchronized updatePower(Landroid/content/Context;I)I
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "power"    # I

    .prologue
    .line 97
    const-class v3, Lcom/ubtechinc/db/StateDao;

    monitor-enter v3

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 98
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "power"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/ubtechinc/db/provider/Provider$StateColums;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 101
    .local v0, "c":I
    monitor-exit v3

    return v0

    .line 97
    .end local v0    # "c":I
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
