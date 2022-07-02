.class Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$1;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "KnoxStateMonitorInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;->addCallback(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;

.field final synthetic val$navBarHiddenCallback:Ljava/util/function/Consumer;

.field final synthetic val$setHardKeyStateCallback:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$1;->this$0:Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$1;->val$navBarHiddenCallback:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$1;->val$setHardKeyStateCallback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetHardKeyIntentState(Z)V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$1;->val$setHardKeyStateCallback:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateNavigationBarHidden()V
    .locals 1

    .line 20
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor$1;->val$navBarHiddenCallback:Ljava/util/function/Consumer;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
