.class Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor$1;
.super Ljava/lang/Object;
.source "NavigationModeInteractor.java"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;->addCallback(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;

.field final synthetic val$canMoveChangedCallback:Ljava/util/function/Consumer;

.field final synthetic val$modeChangedCallback:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor$1;->this$0:Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor$1;->val$modeChangedCallback:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor$1;->val$canMoveChangedCallback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationCanMoveChanged(Z)V
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor$1;->val$canMoveChangedCallback:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    .line 38
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor$1;->val$modeChangedCallback:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
