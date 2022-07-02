.class public final Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$14$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "CustomControlsProviderSelectorActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$14$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;

    .line 154
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$onCreate$14$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->access$updateButtonStatue(Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;)V

    return-void
.end method
