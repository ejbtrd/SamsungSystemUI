.class final Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;
.super Ljava/lang/Object;
.source "CustomAppAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->bindData(Lcom/android/systemui/controls/ControlsServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $model:Lcom/android/systemui/controls/ControlsServiceInfo;

.field final synthetic this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;Lcom/android/systemui/controls/ControlsServiceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->$model:Lcom/android/systemui/controls/ControlsServiceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 143
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    invoke-static {p1}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->access$getOnOff$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    iget-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    invoke-static {p1}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->access$getOnOff$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 145
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    invoke-static {v0}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->access$getOnOff$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->getFavRenderer()Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/adapter/CustomFavoritesRenderer;->getSetActiveFlag()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->$model:Lcom/android/systemui/controls/ControlsServiceInfo;

    iget-object v1, v1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    const-string v2, "model.componentName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->getSwitchCallback()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    invoke-static {v1}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->access$getTitle$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    invoke-static {v0}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->access$getSaLogger$p(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;)Lcom/android/systemui/controls/ui/util/SALogger;

    move-result-object v0

    .line 151
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;->isOOBE()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$ChooseAppOnOff;

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/util/SALogger$Event$ChooseAppOnOff;-><init>(Z)V

    goto :goto_0

    .line 152
    :cond_0
    new-instance p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$ChooseAppOnOffOnManageApps;

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/ui/util/SALogger$Event$ChooseAppOnOffOnManageApps;-><init>(Z)V

    .line 150
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    goto :goto_1

    .line 156
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder$bindData$1;->this$0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$CustomHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_2
    :goto_1
    return-void
.end method
