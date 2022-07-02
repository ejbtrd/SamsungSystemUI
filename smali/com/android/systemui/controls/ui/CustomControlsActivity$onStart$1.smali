.class final Lcom/android/systemui/controls/ui/CustomControlsActivity$onStart$1;
.super Ljava/lang/Object;
.source "CustomControlsActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/CustomControlsActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/CustomControlsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/CustomControlsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity$onStart$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsActivity$onStart$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
