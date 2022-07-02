.class Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController$1;
.super Landroid/database/ContentObserver;
.source "SecHideInformationMirroringController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->initSettingsObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;Landroid/os/Handler;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController$1;->this$0:Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 84
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController$1;->this$0:Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/SecHideInformationMirroringController;->updateMirroringWindowFlag()V

    return-void
.end method
