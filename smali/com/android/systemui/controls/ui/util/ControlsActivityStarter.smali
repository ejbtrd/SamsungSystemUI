.class public final Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;
.super Ljava/lang/Object;
.source "ControlsActivityStarter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsActivityStarter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsActivityStarter.kt\ncom/android/systemui/controls/ui/util/ControlsActivityStarter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,38:1\n1#2:39\n*E\n"
.end annotation


# instance fields
.field private final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/controls/ui/util/ControlsUtil;)V
    .locals 1
    .param p1    # Lcom/android/systemui/plugins/ActivityStarter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/phone/ShadeController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/ui/util/ControlsUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activityStarter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shadeController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsUtil"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 14
    iput-object p2, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 15
    iput-object p3, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    return-void
.end method

.method private final createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 30
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x14000000

    .line 33
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public final startActivity(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method public final startCustomControlsActivity(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    const-class v0, Lcom/android/systemui/controls/ui/CustomControlsActivity;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->isSecureLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    invoke-virtual {v1, p1}, Lcom/android/systemui/controls/ui/util/ControlsUtil;->canAccessLockScreenDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 22
    new-instance v1, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter$startCustomControlsActivity$1$1;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter$startCustomControlsActivity$1$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-interface {p0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 23
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels()V

    goto :goto_0

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p1, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    :goto_0
    return-void
.end method
