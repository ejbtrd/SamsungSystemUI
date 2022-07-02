.class Lcom/android/systemui/BatteryMeterView$SlimIndicatorVisibilityHelper;
.super Ljava/lang/Object;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlimIndicatorVisibilityHelper"
.end annotation


# instance fields
.field private mTicketName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    .line 926
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$SlimIndicatorVisibilityHelper;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 927
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$SlimIndicatorVisibilityHelper;->mTicketName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$1;)V
    .locals 0

    .line 926
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterView$SlimIndicatorVisibilityHelper;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    return-void
.end method


# virtual methods
.method public attach(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 931
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$SlimIndicatorVisibilityHelper;->mTicketName:Ljava/lang/String;

    .line 932
    const-class p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$SlimIndicatorVisibilityHelper;->mTicketName:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    return-void
.end method

.method public detach()V
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$SlimIndicatorVisibilityHelper;->mTicketName:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 937
    :cond_0
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView$SlimIndicatorVisibilityHelper;->mTicketName:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->unregisterSubscriber(Ljava/lang/String;)V

    return-void
.end method

.method public updateQuickStarStyle()V
    .locals 2

    .line 943
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-interface {v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isHiddenBatteryIcon()Z

    move-result v0

    .line 944
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$SlimIndicatorVisibilityHelper;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v1}, Lcom/android/systemui/BatteryMeterView;->access$800(Lcom/android/systemui/BatteryMeterView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 945
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView$SlimIndicatorVisibilityHelper;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {p0}, Lcom/android/systemui/BatteryMeterView;->access$800(Lcom/android/systemui/BatteryMeterView;)Landroid/widget/ImageView;

    move-result-object p0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
