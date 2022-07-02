.class Lcom/android/keyguard/CarrierText$SlimIndicatorVisibilityHelper;
.super Ljava/lang/Object;
.source "CarrierText.java"

# interfaces
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlimIndicatorVisibilityHelper"
.end annotation


# instance fields
.field private mOriginalVisibility:I

.field final synthetic this$0:Lcom/android/keyguard/CarrierText;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/CarrierText;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/keyguard/CarrierText$SlimIndicatorVisibilityHelper;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/CarrierText;Lcom/android/keyguard/CarrierText$1;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText$SlimIndicatorVisibilityHelper;-><init>(Lcom/android/keyguard/CarrierText;)V

    return-void
.end method


# virtual methods
.method public attach(Ljava/lang/String;I)V
    .locals 1

    .line 171
    iput p2, p0, Lcom/android/keyguard/CarrierText$SlimIndicatorVisibilityHelper;->mOriginalVisibility:I

    .line 172
    const-class p2, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v0, "KeyguardStatusBarCarrierText"

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "CarrierText"

    .line 172
    :goto_0
    invoke-interface {p2, p1, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    return-void
.end method

.method public detach(Ljava/lang/String;)V
    .locals 1

    .line 178
    const-class p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v0, "KeyguardStatusBarCarrierText"

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "CarrierText"

    .line 178
    :goto_0
    invoke-interface {p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->unregisterSubscriber(Ljava/lang/String;)V

    return-void
.end method

.method public refreshVisibility(I)I
    .locals 0

    .line 161
    iput p1, p0, Lcom/android/keyguard/CarrierText$SlimIndicatorVisibilityHelper;->mOriginalVisibility:I

    if-nez p1, :cond_0

    .line 163
    const-class p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-interface {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isLockCarrierDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    :cond_0
    return p1
.end method

.method public updateQuickStarStyle()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/CarrierText$SlimIndicatorVisibilityHelper;->this$0:Lcom/android/keyguard/CarrierText;

    iget p0, p0, Lcom/android/keyguard/CarrierText$SlimIndicatorVisibilityHelper;->mOriginalVisibility:I

    invoke-virtual {v0, p0}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    return-void
.end method
