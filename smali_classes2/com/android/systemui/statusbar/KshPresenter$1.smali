.class Lcom/android/systemui/statusbar/KshPresenter$1;
.super Ljava/lang/Object;
.source "KshPresenter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KshPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KshPresenter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KshPresenter;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter$1;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter$1;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KshPresenter;->access$000(Lcom/android/systemui/statusbar/KshPresenter;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter$1;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KshPresenter;->access$100(Lcom/android/systemui/statusbar/KshPresenter;)Lcom/android/systemui/statusbar/KshView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KshView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter$1;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KshPresenter;->access$100(Lcom/android/systemui/statusbar/KshPresenter;)Lcom/android/systemui/statusbar/KshView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KshPresenter$1;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KshPresenter;->access$200(Lcom/android/systemui/statusbar/KshPresenter;)Lcom/android/systemui/statusbar/model/KshData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/model/KshData;->getKshGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KshView;->updateKshDialog(Ljava/util/List;)V

    .line 48
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 49
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KshPresenter$1;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KshPresenter;->access$300(Lcom/android/systemui/statusbar/KshPresenter;)Z

    move-result v1

    if-eq v1, v0, :cond_2

    .line 50
    iget-object v1, p0, Lcom/android/systemui/statusbar/KshPresenter$1;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/KshPresenter;->access$302(Lcom/android/systemui/statusbar/KshPresenter;Z)Z

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter$1;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KshPresenter;->access$100(Lcom/android/systemui/statusbar/KshPresenter;)Lcom/android/systemui/statusbar/KshView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KshView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter$1;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KshPresenter;->access$100(Lcom/android/systemui/statusbar/KshPresenter;)Lcom/android/systemui/statusbar/KshView;

    move-result-object v0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KshPresenter$1;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KshPresenter;->access$400(Lcom/android/systemui/statusbar/KshPresenter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/KshPresenter$1;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KshPresenter;->access$500(Lcom/android/systemui/statusbar/KshPresenter;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KshView;->updateContext(Landroid/content/Context;)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter$1;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KshPresenter;->access$100(Lcom/android/systemui/statusbar/KshPresenter;)Lcom/android/systemui/statusbar/KshView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KshPresenter$1;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KshPresenter;->access$200(Lcom/android/systemui/statusbar/KshPresenter;)Lcom/android/systemui/statusbar/model/KshData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/model/KshData;->getKshGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KshView;->updateKshDialog(Ljava/util/List;)V

    .line 57
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter$1;->this$0:Lcom/android/systemui/statusbar/KshPresenter;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KshPresenter;->access$000(Lcom/android/systemui/statusbar/KshPresenter;)Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method
