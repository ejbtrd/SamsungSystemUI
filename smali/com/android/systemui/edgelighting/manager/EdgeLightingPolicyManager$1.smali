.class Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager$1;
.super Ljava/lang/Object;
.source "EdgeLightingPolicyManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager$1;->this$0:Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;)I
    .locals 0

    .line 98
    iget p0, p1, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->category:I

    iget p1, p2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->category:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 94
    check-cast p1, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    check-cast p2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager$1;->compare(Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;)I

    move-result p0

    return p0
.end method
