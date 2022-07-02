.class public Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;
.super Ljava/lang/Object;
.source "PluginLockInstancePolicy.java"


# static fields
.field private static final CATEGORY_DEFAULT:I = 0x1

.field private static final CATEGORY_DUAL:I = 0x2

.field private static final DEFAULT_PACKAGES:[Ljava/lang/String;

.field public static final DISABLED_ALL:I = 0x0

.field public static final DISABLED_BY_MODE:I = 0x4e20

.field public static final DISABLED_BY_SUB_USER:I = 0x7530

.field private static final DUAL_DISPLAY_PACKAGES:[Ljava/lang/String;

.field public static final PLUGIN_IDENTITY_DIVIDER:I = 0xa

.field public static final TAG:Ljava/lang/String; = "PluginLockInstancePolicy"


# instance fields
.field private final mCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.samsung.android.dynamiclock:2"

    .line 28
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->DEFAULT_PACKAGES:[Ljava/lang/String;

    const-string v1, "com.samsung.android.dynamiclock"

    .line 30
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->DUAL_DISPLAY_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->mCategoryMap:Ljava/util/Map;

    return-void
.end method

.method private getBaseNumber(I)I
    .locals 0

    .line 96
    div-int/lit8 p1, p1, 0xa

    mul-int/lit8 p1, p1, 0xa

    return p1
.end method

.method private setDualDisplayCategory(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 7

    .line 84
    sget-object v0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->DUAL_DISPLAY_PACKAGES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 85
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->mCategoryMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_0

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 90
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->mCategoryMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method isDefaultInstance(I)Z
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->mCategoryMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->getBaseNumber(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDefaultInstance() allowedNumber:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginLockInstancePolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method isDualDisplayInstance(I)Z
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->mCategoryMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->getBaseNumber(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v2, 0x2

    and-int/2addr p0, v2

    if-ne p0, v2, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    .line 62
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDualDisplayInstance() allowedNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PluginLockInstancePolicy"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_2

    .line 63
    sget-boolean p0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0
.end method

.method isEnable(I)Z
    .locals 2

    if-ltz p1, :cond_0

    .line 47
    rem-int/lit8 p0, p1, 0xa

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 48
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEnable() value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PluginLockInstancePolicy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method isSameInstance(II)Z
    .locals 2

    .line 41
    div-int/lit8 p0, p1, 0xa

    div-int/lit8 v0, p2, 0xa

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 42
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSameInstance() submitNum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", matchedNum:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PluginLockInstancePolicy"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method setCategory(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->setDefaultCategory(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->setDualDisplayCategory(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    return-void
.end method

.method setDefaultCategory(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 7

    .line 72
    sget-object v0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->DEFAULT_PACKAGES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 73
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->mCategoryMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_0

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 78
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/pluginlock/PluginLockInstancePolicy;->mCategoryMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getAllowedNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
