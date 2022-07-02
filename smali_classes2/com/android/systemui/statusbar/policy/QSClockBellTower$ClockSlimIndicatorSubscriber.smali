.class Lcom/android/systemui/statusbar/policy/QSClockBellTower$ClockSlimIndicatorSubscriber;
.super Ljava/lang/Object;
.source "QSClockBellTower.java"

# interfaces
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QSClockBellTower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClockSlimIndicatorSubscriber"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/QSClockBellTower;)V
    .locals 1

    .line 469
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$ClockSlimIndicatorSubscriber;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    const-class p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v0, "QSClockBellTower"

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    return-void
.end method


# virtual methods
.method public updateQuickStarStyle()V
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/QSClockBellTower$ClockSlimIndicatorSubscriber;->this$0:Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;->ringBellOfTower()V

    return-void
.end method
