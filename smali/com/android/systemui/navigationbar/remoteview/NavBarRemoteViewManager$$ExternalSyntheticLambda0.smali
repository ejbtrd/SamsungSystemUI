.class public final synthetic Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    check-cast p2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    invoke-static {p1, p2}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->$r8$lambda$JT95RShVB4IQqjzYfIda7wh78Cw(Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;)Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;

    move-result-object p0

    return-object p0
.end method
