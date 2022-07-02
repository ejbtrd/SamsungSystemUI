.class Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$1;
.super Ljava/lang/Object;
.source "DesktopModeInteractor.java"

# interfaces
.implements Lcom/android/systemui/util/DesktopManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->addCallback(Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

.field final synthetic val$callback:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;Ljava/util/function/Consumer;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$1;->this$0:Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$1;->val$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor$1;->val$callback:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
