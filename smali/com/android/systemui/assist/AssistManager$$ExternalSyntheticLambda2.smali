.class public final synthetic Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Landroid/widget/ArrayAdapter;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroid/widget/ArrayAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;->f$1:Landroid/widget/ArrayAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$$ExternalSyntheticLambda2;->f$1:Landroid/widget/ArrayAdapter;

    invoke-static {v0, p0, p1, p2}, Lcom/android/systemui/assist/AssistManager;->$r8$lambda$-jSSBx7k6pVv1ob4Zrbo3tGHKo4(Ljava/util/ArrayList;Landroid/widget/ArrayAdapter;Landroid/content/DialogInterface;I)V

    return-void
.end method
