.class public Lcom/android/systemui/qs/AutoAddTracker;
.super Ljava/lang/Object;
.source "AutoAddTracker.java"

# interfaces
.implements Lcom/android/systemui/util/UserAwareController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/AutoAddTracker$Builder;
    }
.end annotation


# static fields
.field private static final CONVERT_PREFS:[[Ljava/lang/String;


# instance fields
.field private final mAutoAdded:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field protected final mObserver:Landroid/database/ContentObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "QsHotspotAdded"

    const-string v2, "hotspot"

    .line 44
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "QsDataSaverAdded"

    const-string/jumbo v2, "saver"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "QsInvertColorsAdded"

    const-string v2, "inversion"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "QsWorkAdded"

    const-string/jumbo v2, "work"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "QsNightDisplayAdded"

    const-string v2, "night"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/qs/AutoAddTracker;->CONVERT_PREFS:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/android/systemui/qs/AutoAddTracker$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/AutoAddTracker$1;-><init>(Lcom/android/systemui/qs/AutoAddTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mObserver:Landroid/database/ContentObserver;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/qs/AutoAddTracker;->mContext:Landroid/content/Context;

    .line 58
    iput p2, p0, Lcom/android/systemui/qs/AutoAddTracker;->mUserId:I

    .line 59
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p0}, Lcom/android/systemui/qs/AutoAddTracker;->getAdded()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/systemui/qs/AutoAddTracker;->mAutoAdded:Landroid/util/ArraySet;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/AutoAddTracker;)Landroid/util/ArraySet;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mAutoAdded:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/AutoAddTracker;)Ljava/util/Collection;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/qs/AutoAddTracker;->getAdded()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private getAdded()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mUserId:I

    const-string v1, "qs_auto_tiles"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 124
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, ","

    .line 126
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private saveTiles()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker;->mAutoAdded:Landroid/util/ArraySet;

    const-string v2, ","

    .line 117
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mUserId:I

    const-string v2, "qs_auto_tiles"

    .line 116
    invoke-static {v0, v2, v1, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public isAdded(Ljava/lang/String;)Z
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mAutoAdded:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setTileAdded(Ljava/lang/String;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mAutoAdded:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/qs/AutoAddTracker;->saveTiles()V

    :cond_0
    return-void
.end method

.method public setTileRemoved(Ljava/lang/String;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->mAutoAdded:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/qs/AutoAddTracker;->saveTiles()V

    :cond_0
    return-void
.end method
