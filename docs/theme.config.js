import Logo from "./components/logo";

export default {
  logo: () => {
    return (
      <>
        <Logo height={30} />
        <span
          className="mx-2 font-extrabold hidden md:inline select-none"
          title="Kubernetes Client for Dart"
        >
          Kubernetes Client for Dart
        </span>
      </>
    );
  },
  project: {
    link: "https://github.com/fatihsever/k8s-dart",
  },
};
