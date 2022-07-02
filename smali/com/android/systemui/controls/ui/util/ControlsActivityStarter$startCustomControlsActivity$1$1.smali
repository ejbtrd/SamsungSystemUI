.class final Lcom/android/systemui/controls/ui/util/ControlsActivityStarter$startCustomControlsActivity$1$1;
.super Ljava/lang/Object;
.source "ControlsActivityStarter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;->startCustomControlsActivity(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter$startCustomControlsActivity$1$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter$startCustomControlsActivity$1$1;->$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter$startCustomControlsActivity$1$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter$startCustomControlsActivity$1$1;->$intent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
