.class public Lcom/ubtechinc/db/SpeechPluginDao;
.super Ljava/lang/Object;
.source "SpeechPluginDao.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "StateDao"

    sput-object v0, Lcom/ubtechinc/db/SpeechPluginDao;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearData(Landroid/content/Context;)I
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 70
    const-class v2, Lcom/ubtechinc/db/SpeechPluginDao;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/ubtechinc/db/provider/Provider$SpeechPluginColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 73
    .local v0, "c":I
    monitor-exit v2

    return v0

    .line 70
    .end local v0    # "c":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized insert(Landroid/content/Context;Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;)I
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "bean"    # Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;

    .prologue
    .line 19
    const-class v4, Lcom/ubtechinc/db/SpeechPluginDao;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Lcom/ubtechinc/db/SpeechPluginDao;->isExist(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    invoke-static {p0, p1}, Lcom/ubtechinc/db/SpeechPluginDao;->update(Landroid/content/Context;Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 37
    :goto_0
    monitor-exit v4

    return v3

    .line 23
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 24
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "name"

    iget-object v5, p1, Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v3, "action"

    iget-object v5, p1, Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;->action:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/ubtechinc/db/provider/Provider$SpeechPluginColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 29
    .local v1, "uri":Landroid/net/Uri;
    sget-object v3, Lcom/ubtechinc/db/SpeechPluginDao;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "lastPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32
    sget-object v3, Lcom/ubtechinc/db/SpeechPluginDao;->TAG:Ljava/lang/String;

    const-string v5, "insert failure!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 34
    :cond_1
    sget-object v3, Lcom/ubtechinc/db/SpeechPluginDao;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert success! the id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 19
    .end local v0    # "lastPath":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static declared-synchronized isExist(Landroid/content/Context;)Z
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 88
    const-class v7, Lcom/ubtechinc/db/SpeechPluginDao;

    monitor-enter v7

    const/4 v6, 0x0

    .line 90
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/ubtechinc/db/provider/Provider$SpeechPluginColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 93
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const/4 v0, 0x1

    .line 98
    if-eqz v6, :cond_0

    .line 99
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :cond_0
    :goto_0
    monitor-exit v7

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 98
    if-eqz v6, :cond_0

    .line 99
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 98
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_2

    .line 99
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static declared-synchronized query(Landroid/content/Context;)Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;
    .locals 9
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 41
    const-class v8, Lcom/ubtechinc/db/SpeechPluginDao;

    monitor-enter v8

    const/4 v6, 0x0

    .line 43
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/ubtechinc/db/provider/Provider$SpeechPluginColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "action"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 44
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 48
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v7, Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;

    invoke-direct {v7}, Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;-><init>()V

    .line 50
    .local v7, "p":Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;
    const-string v0, "name"

    .line 51
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 50
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;->name:Ljava/lang/String;

    .line 52
    const-string v0, "action"

    .line 54
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 53
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;->action:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/ubtechinc/db/SpeechPluginDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alpha2State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    if-eqz v6, :cond_0

    .line 64
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .end local v7    # "p":Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;
    :cond_0
    :goto_0
    monitor-exit v8

    return-object v7

    .line 59
    :cond_1
    :try_start_2
    sget-object v0, Lcom/ubtechinc/db/SpeechPluginDao;->TAG:Ljava/lang/String;

    const-string v1, "query failure!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    if-eqz v6, :cond_0

    .line 64
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 63
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_2

    .line 64
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private static declared-synchronized update(Landroid/content/Context;Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;)I
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "bean"    # Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;

    .prologue
    .line 78
    const-class v3, Lcom/ubtechinc/db/SpeechPluginDao;

    monitor-enter v3

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 79
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    iget-object v4, p1, Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v2, "action"

    iget-object v4, p1, Lcom/ubtechinc/db/pojos/Alpha2SpeechPlugin;->action:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/ubtechinc/db/provider/Provider$SpeechPluginColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 84
    .local v0, "c":I
    monitor-exit v3

    return v0

    .line 78
    .end local v0    # "c":I
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
