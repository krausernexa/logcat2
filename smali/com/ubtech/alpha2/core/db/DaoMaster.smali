.class public Lcom/ubtech/alpha2/core/db/DaoMaster;
.super Lde/greenrobot/dao/AbstractDaoMaster;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtech/alpha2/core/db/DaoMaster$DevOpenHelper;,
        Lcom/ubtech/alpha2/core/db/DaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I = 0x3


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 71
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lde/greenrobot/dao/AbstractDaoMaster;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 72
    const-class v0, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;

    invoke-virtual {p0, v0}, Lcom/ubtech/alpha2/core/db/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 73
    const-class v0, Lcom/ubtech/alpha2/core/db/dao/NoteDao;

    invoke-virtual {p0, v0}, Lcom/ubtech/alpha2/core/db/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 74
    return-void
.end method

.method public static createAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 34
    invoke-static {p0, p1}, Lcom/ubtech/alpha2/core/db/dao/NoteDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 35
    return-void
.end method

.method public static dropAllTables(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifExists"    # Z

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 40
    invoke-static {p0, p1}, Lcom/ubtech/alpha2/core/db/dao/NoteDao;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 41
    return-void
.end method


# virtual methods
.method public newSession()Lcom/ubtech/alpha2/core/db/DaoSession;
    .locals 4

    .prologue
    .line 77
    new-instance v0, Lcom/ubtech/alpha2/core/db/DaoSession;

    iget-object v1, p0, Lcom/ubtech/alpha2/core/db/DaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lde/greenrobot/dao/identityscope/IdentityScopeType;->Session:Lde/greenrobot/dao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/ubtech/alpha2/core/db/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/ubtech/alpha2/core/db/DaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lcom/ubtech/alpha2/core/db/DaoSession;
    .locals 3
    .param p1, "type"    # Lde/greenrobot/dao/identityscope/IdentityScopeType;

    .prologue
    .line 81
    new-instance v0, Lcom/ubtech/alpha2/core/db/DaoSession;

    iget-object v1, p0, Lcom/ubtech/alpha2/core/db/DaoMaster;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/ubtech/alpha2/core/db/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/ubtech/alpha2/core/db/DaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lde/greenrobot/dao/AbstractDaoSession;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/ubtech/alpha2/core/db/DaoMaster;->newSession()Lcom/ubtech/alpha2/core/db/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lde/greenrobot/dao/AbstractDaoSession;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/ubtech/alpha2/core/db/DaoMaster;->newSession(Lde/greenrobot/dao/identityscope/IdentityScopeType;)Lcom/ubtech/alpha2/core/db/DaoSession;

    move-result-object v0

    return-object v0
.end method
