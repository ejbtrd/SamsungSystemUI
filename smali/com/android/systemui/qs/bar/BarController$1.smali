.class Lcom/android/systemui/qs/bar/BarController$1;
.super Ljava/lang/Object;
.source "BarController.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/bar/BarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/BarController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/BarController;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarController$1;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController$1;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/BarController;->access$000(Lcom/android/systemui/qs/bar/BarController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/bar/BarItem;

    .line 97
    invoke-interface {v1, p1}, Lcom/android/systemui/qs/bar/BarItem;->onConfigChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 100
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    .line 101
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarController$1;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/BarController;->access$100(Lcom/android/systemui/qs/bar/BarController;)I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 103
    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarController$1;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/bar/BarController;->access$102(Lcom/android/systemui/qs/bar/BarController;I)I

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController$1;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/BarController;->access$000(Lcom/android/systemui/qs/bar/BarController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/bar/BarItem;

    .line 105
    invoke-interface {v1}, Lcom/android/systemui/qs/bar/BarItem;->onUiModeChanged()V

    goto :goto_2

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController$1;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/BarController;->access$200(Lcom/android/systemui/qs/bar/BarController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/bar/BarController;->access$300(Lcom/android/systemui/qs/bar/BarController;Landroid/content/Context;)V

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController$1;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/BarController;->access$400(Lcom/android/systemui/qs/bar/BarController;)I

    move-result v0

    iget p1, p1, Landroid/content/res/Configuration;->themeSeq:I

    if-eq v0, p1, :cond_4

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarController$1;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/bar/BarController;->access$402(Lcom/android/systemui/qs/bar/BarController;I)I

    .line 112
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$1;->this$0:Lcom/android/systemui/qs/bar/BarController;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/BarController;->access$200(Lcom/android/systemui/qs/bar/BarController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/bar/BarController;->access$500(Lcom/android/systemui/qs/bar/BarController;Landroid/content/Context;)V

    :cond_4
    return-void
.end method
