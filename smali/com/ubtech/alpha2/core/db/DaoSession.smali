.class public Lcom/ubtech/alpha2/core/db/DaoSession;
.super Lde/greenrobot/dao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field private final noteDao:Lcom/ubtech/alpha2/core/db/dao/NoteDao;

.field private final noteDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

.field private final orderItemDao:Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;

.field private final orderItemDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lde/greenrobot/dao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "type"    # Lde/greenrobot/dao/identityscope/IdentityScopeType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lde/greenrobot/dao/identityscope/IdentityScopeType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lde/greenrobot/dao/AbstractDao",
            "<**>;>;",
            "Lde/greenrobot/dao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p3, "daoConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Lde/greenrobot/dao/AbstractDao<**>;>;Lde/greenrobot/dao/internal/DaoConfig;>;"
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDaoSession;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 52
    const-class v0, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtech/alpha2/core/db/DaoSession;->orderItemDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 53
    iget-object v0, p0, Lcom/ubtech/alpha2/core/db/DaoSession;->orderItemDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 54
    const-class v0, Lcom/ubtech/alpha2/core/db/dao/NoteDao;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->clone()Lde/greenrobot/dao/internal/DaoConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtech/alpha2/core/db/DaoSession;->noteDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    .line 55
    iget-object v0, p0, Lcom/ubtech/alpha2/core/db/DaoSession;->noteDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0, p2}, Lde/greenrobot/dao/internal/DaoConfig;->initIdentityScope(Lde/greenrobot/dao/identityscope/IdentityScopeType;)V

    .line 57
    new-instance v0, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;

    iget-object v1, p0, Lcom/ubtech/alpha2/core/db/DaoSession;->orderItemDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/ubtech/alpha2/core/db/DaoSession;)V

    iput-object v0, p0, Lcom/ubtech/alpha2/core/db/DaoSession;->orderItemDao:Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;

    .line 58
    new-instance v0, Lcom/ubtech/alpha2/core/db/dao/NoteDao;

    iget-object v1, p0, Lcom/ubtech/alpha2/core/db/DaoSession;->noteDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-direct {v0, v1, p0}, Lcom/ubtech/alpha2/core/db/dao/NoteDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/ubtech/alpha2/core/db/DaoSession;)V

    iput-object v0, p0, Lcom/ubtech/alpha2/core/db/DaoSession;->noteDao:Lcom/ubtech/alpha2/core/db/dao/NoteDao;

    .line 60
    const-class v0, Lcom/ubtech/alpha2/core/model/response/OrderItem;

    iget-object v1, p0, Lcom/ubtech/alpha2/core/db/DaoSession;->orderItemDao:Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;

    invoke-virtual {p0, v0, v1}, Lcom/ubtech/alpha2/core/db/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 61
    const-class v0, Lcom/ubtech/alpha2/core/db/model/Note;

    iget-object v1, p0, Lcom/ubtech/alpha2/core/db/DaoSession;->noteDao:Lcom/ubtech/alpha2/core/db/dao/NoteDao;

    invoke-virtual {p0, v0, v1}, Lcom/ubtech/alpha2/core/db/DaoSession;->registerDao(Ljava/lang/Class;Lde/greenrobot/dao/AbstractDao;)V

    .line 62
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ubtech/alpha2/core/db/DaoSession;->orderItemDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 66
    iget-object v0, p0, Lcom/ubtech/alpha2/core/db/DaoSession;->noteDaoConfig:Lde/greenrobot/dao/internal/DaoConfig;

    invoke-virtual {v0}, Lde/greenrobot/dao/internal/DaoConfig;->getIdentityScope()Lde/greenrobot/dao/identityscope/IdentityScope;

    move-result-object v0

    invoke-interface {v0}, Lde/greenrobot/dao/identityscope/IdentityScope;->clear()V

    .line 67
    return-void
.end method

.method public getNoteDao()Lcom/ubtech/alpha2/core/db/dao/NoteDao;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ubtech/alpha2/core/db/DaoSession;->noteDao:Lcom/ubtech/alpha2/core/db/dao/NoteDao;

    return-object v0
.end method

.method public getOrderItemDao()Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ubtech/alpha2/core/db/DaoSession;->orderItemDao:Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;

    return-object v0
.end method
