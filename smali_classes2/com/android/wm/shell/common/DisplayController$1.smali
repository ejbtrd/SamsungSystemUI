.class Lcom/android/wm/shell/common/DisplayController$1;
.super Landroid/database/ContentObserver;
.source "DisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/common/DisplayController;->registerSettingsObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/common/DisplayController;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/common/DisplayController;Landroid/os/Handler;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayController$1;->this$0:Lcom/android/wm/shell/common/DisplayController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 355
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 356
    iget-object p0, p0, Lcom/android/wm/shell/common/DisplayController$1;->this$0:Lcom/android/wm/shell/common/DisplayController;

    invoke-static {p0}, Lcom/android/wm/shell/common/DisplayController;->access$200(Lcom/android/wm/shell/common/DisplayController;)V

    return-void
.end method
