.class public final Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;
.super Landroidx/fragment/app/FragmentFactory;
.source "ControlsFragmentFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsFragmentFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsFragmentFactory.kt\ncom/android/systemui/controls/ui/fragment/ControlsFragmentFactory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,46:1\n1#2:47\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->Companion:Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/util/LayoutUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/ui/util/SALogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/controls/controller/util/BadgeSubject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controlsActivityStarter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutUtil"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "saLogger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeSubject"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/FragmentFactory;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 18
    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 19
    iput-object p3, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 20
    iput-object p4, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    return-void
.end method


# virtual methods
.method public instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 3
    .param p1    # Ljava/lang/ClassLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "classLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "className"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const-class v0, Lcom/android/systemui/controls/ui/fragment/MainFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/android/systemui/controls/ui/fragment/MainFragment;

    .line 29
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 30
    iget-object v1, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 31
    iget-object v2, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 32
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    .line 28
    invoke-direct {p1, v0, v1, v2, p0}, Lcom/android/systemui/controls/ui/fragment/MainFragment;-><init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;)V

    goto :goto_0

    .line 34
    :cond_0
    const-class v0, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/fragment/NoAppFragment;-><init>(Lcom/android/systemui/controls/ui/util/SALogger;)V

    goto :goto_0

    .line 35
    :cond_1
    const-class v0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 37
    iget-object v1, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 38
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->badgeSubject:Lcom/android/systemui/controls/controller/util/BadgeSubject;

    .line 35
    invoke-direct {p1, v0, v1, p0}, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;-><init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;)V

    goto :goto_0

    .line 40
    :cond_2
    const-class v0, Lcom/android/systemui/controls/ui/fragment/SettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/android/systemui/controls/ui/fragment/SettingFragment;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/fragment/SettingFragment;-><init>(Lcom/android/systemui/controls/ui/util/SALogger;)V

    goto :goto_0

    .line 41
    :cond_3
    const-class v0, Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/fragment/SubSettingFragment;-><init>(Lcom/android/systemui/controls/ui/util/SALogger;)V

    goto :goto_0

    .line 42
    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    :goto_0
    const-string/jumbo p0, "when (className) {\n            MainFragment::class.java.name -> MainFragment(\n                controlsActivityStarter,\n                layoutUtil,\n                saLogger,\n                badgeSubject\n            )\n            NoAppFragment::class.java.name -> NoAppFragment(saLogger)\n            NoFavoriteFragment::class.java.name -> NoFavoriteFragment(\n                controlsActivityStarter,\n                saLogger,\n                badgeSubject\n            )\n            SettingFragment::class.java.name -> SettingFragment(saLogger)\n            SubSettingFragment::class.java.name -> SubSettingFragment(saLogger)\n            else -> super.instantiate(classLoader, className)\n        }"

    .line 27
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ControlsFragmentFactory"

    .line 43
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
