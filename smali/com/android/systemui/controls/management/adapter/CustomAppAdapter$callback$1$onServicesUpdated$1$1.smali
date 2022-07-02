.class final synthetic Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1$1;
.super Ljava/lang/Object;
.source "CustomAppAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# instance fields
.field final synthetic $tmp0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1$1;->$tmp0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/CustomAppAdapter$callback$1$onServicesUpdated$1$1;->$tmp0:Lcom/android/systemui/controls/management/adapter/CustomAppAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
