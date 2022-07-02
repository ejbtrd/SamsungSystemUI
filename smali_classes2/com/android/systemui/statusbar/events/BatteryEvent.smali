.class public final Lcom/android/systemui/statusbar/events/BatteryEvent;
.super Ljava/lang/Object;
.source "StatusEvent.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/events/StatusEvent;


# instance fields
.field private applyDelay:Z

.field private forceShowingChip:Z

.field private final forceVisible:Z

.field private final priority:I

.field private final showAnimation:Z

.field private final viewCreator:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 58
    iput v0, p0, Lcom/android/systemui/statusbar/events/BatteryEvent;->priority:I

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/events/BatteryEvent;->showAnimation:Z

    .line 63
    sget-object v0, Lcom/android/systemui/statusbar/events/BatteryEvent$viewCreator$1;->INSTANCE:Lcom/android/systemui/statusbar/events/BatteryEvent$viewCreator$1;

    iput-object v0, p0, Lcom/android/systemui/statusbar/events/BatteryEvent;->viewCreator:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public getApplyDelay()Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/events/BatteryEvent;->applyDelay:Z

    return p0
.end method

.method public getForceShowingChip()Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/events/BatteryEvent;->forceShowingChip:Z

    return p0
.end method

.method public getForceVisible()Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/events/BatteryEvent;->forceVisible:Z

    return p0
.end method

.method public getPriority()I
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/systemui/statusbar/events/BatteryEvent;->priority:I

    return p0
.end method

.method public getShowAnimation()Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/events/BatteryEvent;->showAnimation:Z

    return p0
.end method

.method public getViewCreator()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 63
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/BatteryEvent;->viewCreator:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public shouldUpdateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)Z
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/events/StatusEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/events/StatusEvent$DefaultImpls;->shouldUpdateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;Lcom/android/systemui/statusbar/events/StatusEvent;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 71
    const-class p0, Lcom/android/systemui/statusbar/events/BatteryEvent;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "javaClass.simpleName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public updateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/events/StatusEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/events/StatusEvent$DefaultImpls;->updateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;Lcom/android/systemui/statusbar/events/StatusEvent;)V

    return-void
.end method
