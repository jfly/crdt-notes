import type { LoaderQuery } from "@saflib/vue";
import { ref } from "vue";
import { getProfile } from "@saflib/auth";
import { useQuery } from "@tanstack/vue-query";

export function useNoteListLoader() {
  let firstNoteId = localStorage.getItem("first-note");
  if (!firstNoteId) {
    firstNoteId = window.repo.create({
      id: "first-note",
      title: "First Note",
      contents: "Hello, world!",
      createdAt: new Date().toISOString(),
      updatedAt: new Date().toISOString(),
    }).url;
    localStorage.setItem("first-note", firstNoteId);
  }

  const docQuery: LoaderQuery<string> = {
    isLoading: ref(false),
    error: ref(null),
    isError: ref(false),
    data: firstNoteId,
  };

  return { docQuery, profileQuery: useQuery(getProfile()) };
}
