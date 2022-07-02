.class public Lcom/android/systemui/edgelighting/utils/AppIconCache;
.super Ljava/lang/Object;
.source "AppIconCache.java"


# instance fields
.field private KEY_SMALL_ICON:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIconCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/utils/AppIconCache;->mIconCache:Landroid/util/LruCache;

    const-string/jumbo v0, "smallIcon"

    .line 20
    iput-object v0, p0, Lcom/android/systemui/edgelighting/utils/AppIconCache;->KEY_SMALL_ICON:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/android/systemui/edgelighting/utils/AppIconCache;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getNotiSmallIcon(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/systemui/edgelighting/utils/AppIconCache;->KEY_SMALL_ICON:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 52
    instance-of v0, p1, Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    .line 53
    check-cast p1, Landroid/graphics/drawable/Icon;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/utils/AppIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAppIcon(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 31
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/edgelighting/utils/AppIconCache;->getNotiSmallIcon(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 34
    iget-object p0, p0, Lcom/android/systemui/edgelighting/utils/AppIconCache;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 37
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/edgelighting/utils/AppIconCache;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    return-object p2

    .line 41
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/utils/AppIconCache;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 43
    iget-object p0, p0, Lcom/android/systemui/edgelighting/utils/AppIconCache;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p2
.end method

.method public getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/utils/AppIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/edgelighting/utils/AppIconCache;->mIconCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 65
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-object v0
.end method
