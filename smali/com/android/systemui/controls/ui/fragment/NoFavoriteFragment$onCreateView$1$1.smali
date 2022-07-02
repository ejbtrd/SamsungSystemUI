.class final Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;
.super Ljava/lang/Object;
.source "NoFavoriteFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/android/systemui/controls/ui/view/ControlContainedButton;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;Lcom/android/systemui/controls/ui/view/ControlContainedButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;->this$0:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;->$this_apply:Lcom/android/systemui/controls/ui/view/ControlContainedButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "NoFavoriteFragment"

    const-string/jumbo v0, "startProviderSelectorActivity"

    .line 54
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;->this$0:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->access$getSaLogger$p(Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;)Lcom/android/systemui/controls/ui/util/SALogger;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/controls/ui/util/SALogger$Event$AddDevices;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$AddDevices;

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;->this$0:Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;->access$getControlsActivityStarter$p(Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment;)Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    move-result-object p1

    .line 57
    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/NoFavoriteFragment$onCreateView$1$1;->$this_apply:Lcom/android/systemui/controls/ui/view/ControlContainedButton;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;

    .line 56
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;->startActivity(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method
