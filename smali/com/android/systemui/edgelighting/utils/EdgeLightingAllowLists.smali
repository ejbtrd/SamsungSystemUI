.class public Lcom/android/systemui/edgelighting/utils/EdgeLightingAllowLists;
.super Ljava/lang/Object;
.source "EdgeLightingAllowLists.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/utils/EdgeLightingAllowLists$EdgeLightingSignatures;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeLightingAllowLists"

.field private static mPrefixPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/edgelighting/utils/EdgeLightingAllowLists;->mPrefixPackage:Ljava/util/ArrayList;

    return-void
.end method

.method private static getSignatures(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 160
    invoke-static {}, Lcom/android/systemui/edgelighting/utils/EdgeLightingAllowLists$EdgeLightingSignatures;->values()[Lcom/android/systemui/edgelighting/utils/EdgeLightingAllowLists$EdgeLightingSignatures;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingAllowLists$EdgeLightingSignatures;->getSignature()Landroid/content/pm/Signature;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static hasOnlyPlatformKey([Landroid/content/pm/Signature;)Z
    .locals 1

    const/4 v0, 0x1

    .line 140
    invoke-static {p0, v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingAllowLists;->isMatchedSignature([Landroid/content/pm/Signature;I)Z

    move-result p0

    return p0
.end method

.method public static isAllowedToUseClassLoader(Ljava/lang/String;I)Z
    .locals 4

    const-string v0, "package"

    .line 83
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x40

    .line 86
    :try_start_0
    invoke-interface {v0, p0, v1, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 93
    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 98
    :cond_1
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "userdebug"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 111
    :cond_2
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 113
    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingAllowLists;->hasOnlyPlatformKey([Landroid/content/pm/Signature;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    .line 117
    :cond_3
    sget-object p1, Lcom/android/systemui/edgelighting/utils/EdgeLightingAllowLists;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal calssloader ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    :goto_1
    return v2
.end method

.method private static isMatchedSignature([Landroid/content/pm/Signature;I)Z
    .locals 6

    .line 167
    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingAllowLists;->getSignatures(I)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 169
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 170
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/Signature;

    if-eqz v5, :cond_0

    .line 171
    invoke-virtual {v5, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
