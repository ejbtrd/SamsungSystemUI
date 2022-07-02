.class final Lcom/android/systemui/controls/management/ControlsEditingActivity$bindButtons$1$1;
.super Ljava/lang/Object;
.source "ControlsEditingActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/ControlsEditingActivity;->bindButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/ControlsEditingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$bindButtons$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 147
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$bindButtons$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;

    invoke-static {p1}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->access$saveFavorites(Lcom/android/systemui/controls/management/ControlsEditingActivity;)V

    .line 148
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$bindButtons$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;

    .line 149
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$bindButtons$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/controls/ui/ControlsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$bindButtons$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-static {v1, v2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 148
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 153
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$bindButtons$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsEditingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsEditingActivity;->access$animateExitAndFinish(Lcom/android/systemui/controls/management/ControlsEditingActivity;)V

    return-void
.end method
