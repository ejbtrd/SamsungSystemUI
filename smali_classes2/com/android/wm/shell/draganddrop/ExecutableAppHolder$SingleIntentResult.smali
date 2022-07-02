.class Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;
.super Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultImpl;
.source "ExecutableAppHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleIntentResult"
.end annotation


# instance fields
.field private final mAlwaysUseOptions:Z

.field private final mIntent:Landroid/content/Intent;

.field private final mResolveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$QcC0ke0UgVYdUy4c-VQc1iIBnks(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;Landroid/content/pm/ResolveInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;->lambda$hasResizableResolveInfo$2(Landroid/content/pm/ResolveInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$U_V29Y5HC49hotRUmLE0Slecq3k(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;->lambda$hasResolveInfoInFullscreen$1(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jcWKkyAnxtuwrmnb5bE1yhznAXQ(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;->lambda$hasResolveInfoInFullscreenOnly$0(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tG47jlTrMQ9TYtINt8_RChorNVE(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;->lambda$makeExecutableApp$3(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/content/Intent;Ljava/util/List;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 648
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;-><init>(Landroid/content/Intent;Ljava/util/List;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Intent;Ljava/util/List;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;",
            "Z)V"
        }
    .end annotation

    .line 653
    invoke-direct {p0, p3}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultImpl;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;)V

    .line 643
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;->mResolveInfos:Ljava/util/List;

    .line 654
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;->mIntent:Landroid/content/Intent;

    .line 655
    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 656
    iput-boolean p4, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;->mAlwaysUseOptions:Z

    return-void
.end method

.method private synthetic lambda$hasResizableResolveInfo$2(Landroid/content/pm/ResolveInfo;)Z
    .locals 0

    .line 677
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultImpl;->supportsMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$hasResolveInfoInFullscreen$1(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z
    .locals 0

    .line 671
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultImpl;->isVisibleSingleInstance(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$hasResolveInfoInFullscreenOnly$0(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z
    .locals 0

    .line 663
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultImpl;->isVisibleSingleInstance(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makeExecutableApp$3(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z
    .locals 0

    .line 684
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultImpl;->isVisibleSingleInstance(Ljava/util/List;Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public hasResizableResolveInfo()Z
    .locals 2

    .line 676
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;->mResolveInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 677
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method public hasResolveInfoInFullscreen(Lcom/android/wm/shell/draganddrop/VisibleTasks;)Z
    .locals 2

    .line 669
    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->getFullscreenTasks()Ljava/util/List;

    move-result-object p1

    .line 670
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;->mResolveInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 671
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method public hasResolveInfoInFullscreenOnly(Lcom/android/wm/shell/draganddrop/VisibleTasks;)Z
    .locals 2

    .line 661
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;->mResolveInfos:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 662
    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->getFullscreenTasks()Ljava/util/List;

    move-result-object p1

    .line 663
    new-instance v1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 664
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method makeAppInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Lcom/android/wm/shell/draganddrop/AppInfo;
    .locals 0

    .line 696
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 697
    iget-object p2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 698
    new-instance p2, Lcom/android/wm/shell/draganddrop/AppInfo;

    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 699
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/android/wm/shell/draganddrop/AppInfo;-><init>(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Z)V

    return-object p2
.end method

.method makeDropResolverInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)Lcom/android/wm/shell/draganddrop/AppInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Lcom/android/wm/shell/draganddrop/AppInfo;"
        }
    .end annotation

    .line 703
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/wm/shell/draganddrop/DropResolverActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x18000000

    .line 704
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "android.intent.extra.INTENT"

    .line 705
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 706
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "dropResolverActivity.extra.rlist"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 707
    iget-boolean p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;->mAlwaysUseOptions:Z

    const-string p1, "dropResolverActivity.extra.supportsAlwaysUseOption"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 708
    sget-boolean p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "makeResolverInfo: using intent="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_0
    new-instance p0, Lcom/android/wm/shell/draganddrop/AppInfo;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/wm/shell/draganddrop/AppInfo;-><init>(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Z)V

    return-object p0
.end method

.method public makeExecutableApp(Landroid/content/Context;ILcom/android/wm/shell/draganddrop/VisibleTasks;)Lcom/android/wm/shell/draganddrop/AppInfo;
    .locals 2

    .line 682
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;->mResolveInfos:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 683
    invoke-virtual {p3, p2}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->getTasksException(I)Ljava/util/List;

    move-result-object p2

    .line 684
    new-instance p3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p2}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;Ljava/util/List;)V

    invoke-interface {v0, p3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 685
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 688
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_1

    .line 689
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;->makeDropResolverInfo(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)Lcom/android/wm/shell/draganddrop/AppInfo;

    move-result-object p0

    return-object p0

    .line 691
    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;->mIntent:Landroid/content/Intent;

    const/high16 p3, 0x18000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 692
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;->mIntent:Landroid/content/Intent;

    const/4 p3, 0x0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$SingleIntentResult;->makeAppInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Lcom/android/wm/shell/draganddrop/AppInfo;

    move-result-object p0

    return-object p0
.end method
